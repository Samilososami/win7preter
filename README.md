# win7preter
Mi mejor herramienta hasta ahora.
Permite recibir una sesión de meterpreter de maquinas windows 7 de 32 bits.
La instalación y descarga de las dependencias es realmente sencilla e intuitiva.

Instalación
```
git clone https://github.com/Samilososami/win7preter.git
cd win7preter
chmod +x *
```
Para descargar las dependencias y recursos, ejecuta el archivo ``` setup.sh ``` y sigue las instrucciones. Tambien permite añadir el script al PATH directamente.

Uso (sin el PATH)
```
# Creamos el payload
./shell
# Ponemos en escucha Metasploit
./listener
# Ejecutamos el payload
./win
```
Uso (con el PATH)
```
# Creamos el payload
shell
# Ponemos en escucha Metasploit
listener
# Ejecutamos el payload
win
```
