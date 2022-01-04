#localhost to publik
clear
screen -X -S "remot" quit
rm -rf logremot.txt
rm -rf ../.ssh/known_hosts
clear
echo "Starting...."
screen -dmS remot -L -Logfile logremot.txt ssh -i ../.ssh/lh-host  -o StrictHostKeyChecking=no -R 80:localhost:80 localhost.run
sleep 8
./bot.sh


host=$(cat logremot.txt|grep tunneled|awk '{print $1}')
echo "Done...."
echo "Host: $host"
