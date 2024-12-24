# Resumen de comandos tipicos utilizados en el manejo de terminal de linux

**Tabla de contenido**

- [Resumen de comandos tipicos utilizados en el manejo de terminal de linux](#resumen-de-comandos-tipicos-utilizados-en-el-manejo-de-terminal-de-linux)
- [Conceptos clave de Linux y Unix](#conceptos-clave-de-linux-y-unix)
  - [unix](#unix)
  - [linux](#linux)
  - [Distribuciones de linux](#distribuciones-de-linux)
  - [Los comandos](#los-comandos)

# Conceptos clave de Linux y Unix
Antes de considerar que es Linux y Unix es importante entender la importancia de los que es un sistema operativo. Este podria considerarse por las siglas "OS" y representa software que tiene la capacidad de administrar el hardware y cursos disponibles en una computadora
## unix 
Es considerado familiar lejano de los sistemas operativos que a permitido el gestionamiento de las tareas consolidadas entra Hardware y Software. En principio fue creado como un sistema para un hardware especifico, la computadora PDP-7, pero luego sus bases fueron descritas con <em>C</em> para ser compatible con otras arquitecturas de software.
- Oracle Solaris (Open Solaris)
- FreeBSD
- HP - UX
- IBM AIX
- Apple macOs
  
## linux
Es un sistema operativo versatil Open Source y gratuito descendiente de el sistema operativo Unix, cuenta con caracteristicas unicas como:
1. Versionado
2. Seguro
3. Multi - usuario
4. Gratis y especializado segun distribucion
5. Realizacion de tareas en paralelo
6. Portatil y de bajo consumo

Un tiempo despues aparece GNU como un conjunto de herramientas practicas del sistema Unix, junto al desarrollo del nucleo de procesamiento linux-kernel, como pomponente central que permitiria la comunicaciones entra componentes de la arquitectura de una computadora, en definitiva linux es la esencia de GNU + Kernel linux + Tux (pinguino de linux).
Linux se a expandido a operar en aplicaciones para diferentes tipos de dispositivos como dispotivos android, supercomutadoras, centros de datos, Microcontroladores para tareas IotT y servidores de cloud, entre otras.

## Distribuciones de linux
Son muy conocidoas por que continen versiones puntuales de Linux OS, existen diferentes tipos de distros diferenciables por sus aplicaciones o comandos unicos que se pueden utilizar, algunas se presentan de tipo **GUI** o como **SERVER** alguna mas populares que otras pero estas se ven respaldadas por: `Soporta de la comunidad` y `Versiones de soporte a largo plazo (LTS)`   

| Distribucion  | Funcion                                                                                  |
| ------------- | ---------------------------------------------------------------------------------------- |
| Debian        | Estable y confiable para operaciones generales                                           |
| Ubuntu        | Popular y muy intuitiva, amigable con el usuario                                         |
| Red Hat Linux | Empresarial, util en las gestion de actividades del servidor                             |
| Fedora        | Estable y confiable para operaciones generales                                           |
| Arch Linux    | Comunmente utilizada para pruebas de seguridad, vulnerabilidades y riesgos de un sistema |

Para entender mejor la estructura de Linux es importante observar las capas de la arquitectura del sistema operativo, es por ello que en la siguiente ilustracion se pueden visualizar 5 capas interconectadas que permiten la comunicacion desde al hardware hasta la interfaz de usuario
<div style="text-align: center;">
<img src="Comandos_Linux\pictures_folder\Linux_Architecture.jpg" alt="Ejemplo de Imagen" width="700">
</div>

| Componente        | Funcion                                                                                                                     |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------- |
| GUI               | Comunica y presenta al usuario final de forma visual las tareas ejecutadas por linux                                        |
| Application layer | Utiliza aplicaiones como compiladores, Shell, lenguales, editores, aplicaiones de usuario entre otras herramientas          |
| Operating System  | Gestiona y programa tareas internas del sistema operatio, asigna software a usuarios, detecta errores y administra archivos |
| Kernel            | Puente entre el Hardware y el SO gestiona recursos de memoria, preocesos, controladores y seguridad                         |
| Hardware          | Gestiona recursos de CPU, RAM, almacenamiento, pantalla y puesto I/O                                                        |

Cuando se comienza a trabajar con la terminal de linux lo mas comun es encontrar la siguiente organizacion del directorio root
<div style="text-align: center;">
<img src="Comandos_Linux\pictures_folder\Directorios-del-sistema-Linux.jpg" alt="Ejemplo de Imagen" width="500">
</div>

## Los comandos
Es una una sentencia logica que instruye a Linux OS realizar una accion o operacion, su estructura es la siguiente
> $ comando   -opcion   argumentos
- El comando representa la instruccion objetivo que se quiere realizar, 
- la opcion representa una variante de la instruccion principal que se quiere realizar
- y los argumentos establecen el contenido o elemento al que se aplica el comando, siendo en principio la base de escritura de comandos en la terminal de linux.

Dentro  de la carpeta principal llamada <Strong>Main</Strong> se encontraran las diferentes archivos markdown con las secciones de los fundamentos de linux

|  Num |                                                         Seccion |
| ---: | --------------------------------------------------------------: |
|   1. |                 Terminal de linux y navegacion por direcctorios |
|   2. |                              Comando de informacion del sistema |
|   3. |                           Comandos de acceso, control y permiso |
|   4. | Comandos para la manipulacion de archivos por linea de comandos |
|   5. |                                  Fundamentos de Shell Scripting |

> [!NOTE]
> Espero puedan servirte para tener una nocion clara del potencial y capacidad que tiene linux para sumergirte en el mundo de la informatica 