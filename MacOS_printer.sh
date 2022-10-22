 FILE=/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTAC224e.gz

 while [ ! -f "$FILE" ];
 do
 echo "$FILE does not exist."
 osascript -e 'display notification "Printer driver not in his directory, i will try to find it in 20sec" with title "❌" sound name "Boop"'
 sleep 20
 done
 echo "$FILE exist."
 osascript -e 'display notification "You have printer driver i will now try to install it for you!" with title "👍🏼"sound name "Boop"'
 sleep 5

 while ! ping -c1 PRINTER ADDRESS &>/dev/null
 do
 echo "Ping Fail - `date`"
 osascript -e 'display notification "Connect to printer network to finish printer installation" with title "❗️" sound name "Boop"'
 done
 echo "Host Found - `date`"

 /usr/sbin/lpadmin -p "PRINT QUEUE" -D "PRINTER NAME" -E -v lpd://"PRINTER ADDRESS"/"secure" -P "DRIVER PATH" 

 osascript -e 'display notification "Your printer driver is succesufully installed! " with title "🥳" sound name "Boop"'
