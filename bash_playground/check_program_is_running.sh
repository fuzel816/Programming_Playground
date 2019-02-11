#!/usr/bin/env bash

program='xournal'
ps cax | grep $program > /dev/null
if [ $? -eq 0 ]; then
	echo "Program is running"
fi
#Überprüfung, ob ein Programm gerade ausgeführt wird oder nicht
#while [ 1 ]
#  do
#  	stat=`ps -aux | grep xournal`  #Überprüfen des aktuellen Status
#  	#Ausgabe auf die Konsole
#  	echo $stat
#  	sleep 1 #Warte eine Sekunde, bevor das Programm erneut ausgeführt wird
#  done
