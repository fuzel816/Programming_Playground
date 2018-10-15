#/bin/sh
#Lastenheft:
	#Programm soll als Deamon agieren und während der Ausführung von xounral im Hintergrund laufen.
	#Umsetzten der Eingabe ohne die Enter Taste 

#Drehen des Bildschirmes um 180 Grad, bei Ausführung und Tastenkombination.
#arg= "<" : Drehen des Bildschirmes auf seine normale Position.
#arg= ">" : Drehen des Bildschirmes um 180 Grad.
#Programm wird über exit beendet.

#Starten viruelles Keyboard
florence &
#Starten xournal
xournal &
#initiales Drehen
xrandr -o inverted
xsetwacom set 11 rotate half

while [ 1 ]
	read input
	do
		if [ $input == "<" ]
		then
			#echo "Drehung normal"
			xrandr -o normal
			xsetwacom set 11 rotate none
		fi
		if [ $input == ">" ]
		then
			#echo "Drehung 180 Grad"
			xrandr -o inverted
			xsetwacom set 11 rotate half
		fi
		if [ $input == "exit" ]
		then
			exit 0
		fi
	done
