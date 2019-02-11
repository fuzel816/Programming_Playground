#!/bin/bash
#Array für das Speichern der zu installierenden Programme
declare -a array=("one" "two" "three")
#Aktualisieren der Verzeichnisse
apt-get update && apt-get upgrade -y
#Installieren der benötigten Programme

for i in "${array[@]}"
do
   echo "Installation von  $i"
done
#Rückgabe der Installation

