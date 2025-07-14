#!/bin/bash

# Programa para analiszar los resultados obtenidos por nmap y construir documento html

TITULO="Resultados de nmap"
FECHA_ACTUAL="$(date)"
TIMESTAMP="Informe generado el $FECHA_ACTUAL por el usuario $USERNAME"

nmap_report () {
    # Generacion de reporte raw con nmap
    echo "[INFO] Ejecutando nmap en la red $1, por favor espere unos segundos..."
    sudo nmap -sV "$1" > "$2"
    echo "[OK] Fichero $2 generado correctamente."
    # Dividimos el fichero por lineas vacias
    echo "[INFO] Dividiendo el fichero $2 por lineas vacias..."
    csplit "$2" '/^$/' {*} > /dev/null
    echo "[OK] Fichero $2 dividido en los siguientes ficheros: $(ls xx*)"
    return 0
}

result_parser () {
    for i in xx*; do
        host_ip=$(grep -E 'Nmap scan report ' $i | grep -E -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1-3}}')
        if [ $host_ip ]; then
            echo "<tr>"
            echo "<td>$host_ip</td>"

            # Obtenemos los puertos abiertos
            puertos_abiertos=$(grep -E -h '^[0-9]{1,5}/(tcp|udp) open' $i | grep -E -o '^[0-9]{1,5}/(tcp/udp)')
            if [ "$puertos_abiertos"]; then
                echo "<td>$puertos_abiertos</td>"
            else
                echo "<td>No hay puertos abiertos</td>"
            fi

            # Ontenemos los servicios
            servicios=($(grep -E -h '^[0-9]{1,5}/(tcp|udp) open' $i | grep -E -o ' .* '))
            if [ "$servicios"]; then
                echo "<td>$servicios</td>"
            else
                echo "<td>No hay servicios expuetos</td>"
            fi
                echo "</tr>"
        fi
    done
    return 0
}

generar_html () {
cat <<EOF

<html>
    <head>
        <title>$TITULO</title>
    </head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;    
        }

        td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
        }
    
        tr:nth-child(even) {
            background-color : #dddddd;
        }

    </style>
    <body>
        <h1>$TITULO</h1>
        <p1>$TIMESTAMP</p1>
        <table>
            <tr>
                <th>Host IP</th>
                <th>Puertos abiertos</th>
                <th>Servicios</th>
            </tr>
            $(resultad_parser)
        </table>
    </body>
</html>

EOF

}

if [ $(find salido_nmap.raw -mmin -30) ]; then
     