#/bin/sh
#Lastenheft:
	#Programm soll als Deamon agieren und während der Ausführung von xounral im Hintergrund laufen.
	#Umsetzten der Eingabe ohne die Enter Taste 

#Drehen des Bildschirmes um 180 Grad, bei Ausführung und Tastenkombination.
#arg= "<" : Drehen des Bildschirmes auf seine normale Position.
#arg= ">" : Drehen des Bildschirmes um 180 Grad.
#Programm wird über Strg+C beendet.

#Bestimmen der Stylus ID
Stylus_ID=`xsetwacom --list |grep STYLUS | awk '{print $7}'`
#Starten viruelles Keyboard
florence &
pid_florence=`pidof florence`
#Starten xournal
xournal &
pid_xournal=`pidof xournal`
#initiales Drehen
xrandr -o inverted
xsetwacom set $Stylus_ID rotate half

#Einfügen kontrolliertes Abschalten
trap '{ 
	echo "Beenden Flip_Screen";
        xrandr -o normal;
        xsetwacom set $Stylus_ID rotate none;
	kill $pid_florence;
	kill $pid_xournal;	
	exit 1; 
}' INT


while [ 1 ]
	read input
	do
		if [ $input == "<" ]
		then
			#echo "Drehung normal"
			xrandr -o normal
			xsetwacom set $Stylus_ID rotate none
		fi
		if [ $input == ">" ]
		then
			#echo "Drehung 180 Grad"
			xrandr -o inverted
			xsetwacom set $Stylus_ID rotate half
		fi
	done
