#!/usr/bin/env bash

#Überprüfung, ob ein Programm gerade ausgeführt wird oder nicht
x=1
while [ $x -le 5 ]
  do
  #Auslesen des Programmes

  #Überprüfen des aktuellen Status

  #Ausgabe auf die Konsole

  #print Programm im Vordergrung
  echo "x:=$x"
  x=$(( $x+1 ))
  #print Programm im Hintergrund

  sleep 1 #Warte eine Sekunde, bevor das Programm erneut ausgeführt wird
  done
