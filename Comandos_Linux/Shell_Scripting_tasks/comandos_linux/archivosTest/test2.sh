#! /bin/bash
#Script con algunos opeardores logicos de shell scripting
# -a es lo mismo que and, 
# -o es lo mismo que o
# -f verifica que un archivo existe
# -d verifica que un archivo sea directorio
# !-f verifica que un archivo no exista

#operaciones de comparacion
# -eq (igual)
# -ne (no igual)
# -gt (mayor que)
# -lt (menor que)
# -ge (mayor o igual que)
# -le (menor o igual que)
a=1
b=2
# es importante hacer validaciones
if ! [[ $a =~ ^-?[0-9]+$ && $b =~ ^-?[0-9]+$ ]]; then
    echo "Error: Las variables a y b deben ser números."
    exit 1
fi

if [[ $a -le $b ]]
then
	echo "a is less than or equal to b"
else
	echo "a is not less than or equal to b"
fi

echo $((a + b))


: << 'EOF'
Este es un comentario de múltiples líneas.
Todo lo que está aquí será ignorado por Bash.
Puedes escribir lo que quieras.
EOF


