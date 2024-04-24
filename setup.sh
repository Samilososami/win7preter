#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


clear
echo -e "$greenColour[+] Vamos a instalar las dependencias necesarias...$endColour\n"
sleep 1
pip3 install colorama 2>/dev/null
pip3 install pyperclip 2>/dev/null
pip3 install time 2>/dev/null
apt install metasploit-framework 2>/dev/null
chmod +x shell
chmod +x win
while true; do

echo -e "$greenColour"
read -p "¿Deseas añadir los archivos al PATH? (S/N/info): " path
echo -e "$endColour"

if [[ "$path" == "s" || "$path" == "S" ]]; then
	echo -e "${yellowColour}[+] Añadiendo los archivos al PATH...${endColour}"
	chmod +x *
	cp ".KERNEL.bin" ".METERPRETER.bin" "shell" "win" ".ms17_010_eternalblue.py" ".sc_x86_kernel.bin" /usr/bin
	sleep 1
	echo -e "${greenColour}[+] Archivos añadidos al path!${endColour}"
	break

elif [[ "$path" == "n" || "$path" == "N" ]]; then
	echo -e "${turquoiseColour}[+] Los archivos no se han movido al PATH.${endColour}"
	break


elif [[ "$path" == "info" ]]; then
	echo -e "${yellowColour}[+] Información sobre la exportación de archivos al PATH.\n${endColour}"
	echo -e "Añadir un archivo al PATH permite que este se ejecute llamandolo por su nombre\ndesde cualquier directorio sin la necesidad de moverse hacia donde está o\nsin introducir la ruta completa en la terminal, por ejemplo:\ncat --> /usr/bin/cat\nmsfconsole --> /usr/bin/msfconsole.${endColour}"
	break

else
	echo -e "${redColour}[!] La respuesta no es válida, escoge una de las opciones!${endColour}"
	sleep 2.5
	clear

fi

done
