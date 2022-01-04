# Bot telegram
clear
TOKEN_BOT="5060855938:AAGEghPMywY54HWtE3PsO2NxGCqqBgecRqo"
CHAT_ID="1178201791"
PESAN="Halo dikirim dari server <b>$(hostname)</b>%0D%0AYour url: $host"
host=$(cat logremot.txt|grep tunneled|awk '{print $1}')
curl -s -X POST "https://api.telegram.org/bot$TOKEN_BOT/sendmessage" -d "chat_id=$CHAT_ID" -d "parse_mode=html" -d "text=$PESAN"
