#/bin/sh

#Einfangen des Strg+C Befehls. Ausführen von bestimmten Befehlen nach Eingabe
#Url:http://kb.mit.edu/confluence/pages/viewpage.action?pageId=3907156

trap '{ echo "Hey, you pressed Ctrl-C.  Time to quit." ; exit 1; }' INT
echo "Counting to 5 slowly, press Ctrl-C to interrupt."
for number in 1 2 3 4 5; do
    echo $number
    sleep 1
done

trap - INT
echo "One more time, but Ctrl-C should work again."
for number in 1 2 3 4 5; do
    echo $number
    sleep 1
done
exit 0
