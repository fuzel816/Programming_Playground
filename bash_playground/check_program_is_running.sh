#!/usr/bin/env bash

#Überprüfung, ob ein Programm gerade ausgeführt wird oder nicht
x=1
pid=`ps -A | grep xournal | awk '{print $1}'` #Auslesen des Programmes
while [ $x -le 50 ]
  do

  stat=`ps -u | grep $pid | awk '{print $8}'`  #Überprüfen des aktuellen Status

    #Ausgabe auf die Konsole
    echo "x:=$x\tpid:=$pid\tstat:=$stat"
    x=$(( $x+1 ))
    #Programm im Vordergrung

    #Programm im Hintergrund

    sleep 1 #Warte eine Sekunde, bevor das Programm erneut ausgeführt wird
  done
