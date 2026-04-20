Script_Barrido_Host_Red

Un script hecho en bash que realiza un ping a cada host de una red /24 para verificar que hosts estan activos en la red.

Caracteristicas
Puede ejecutarse sin un entorno grafico o en una CLI.
No requiere permisos de superusuario (root).

Requisitos
Tener bash
Poder ejecutar el comando ping.

Instalacion y Uso

1. Extrae el zip o copia directamente el script
2. Otorga permisos de ejecución.
     chmod +x script_barrido_host_red.sh
4. Ejecuta
     ./script_barrido_host_red.sh 192.168.1.0

Ejemplo de Salida

-------------------------------
Iniciando barrido de red...
-------------------------------
El host con la dirección 192.168.1.1 está activo.
El host con la dirección 192.168.1.20 está activo.
El host con la dirección 192.168.1.100 está activo.
El host con la dirección 192.168.1.254 está activo.
-------------------------------
Proceso de barrido finalizado.
-------------------------------
