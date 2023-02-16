#!/bin/sh

# Your USERID or Channel ID to display alert and key, we recommend you create new bot with @BotFather on Telegram
USERID="1900865012"
KEY="5070604324:AAFpmh_KAipATvi_dtScLqNQMIcvaxvpi5w"

URL="https://api.telegram.org/bot$KEY/sendMessage"
DATE="$(date "+%d %b %Y %H:%M")"

if [ -n "$SSH_CLIENT" ]; then
	CLIENT_IP=$(echo $SSH_CLIENT | awk '{print $1}')

	SRV_HOSTNAME=$(hostname -f)
	SRV_IP=$(hostname -I | awk '{print $1}')

	IPINFO="https://norsiide.be/whois/ip?whois=$CLIENT_IP"

	TEXT="$(echo "Nouvelle connexion SSH sur le serveur! \n\n *Ip du clients*: $CLIENT_IP \n *Utilisateur*: $USER \n *Serveur* (*$SRV_HOSTNAME*) \n *Ip du serveur* (*$SRV_IP*) \n *Date*: $DATE \n *informations*: [$IPINFO]($IPINFO)")"

	curl -s -d "chat_id=$USERID&text=$TEXT&disable_web_page_preview=true&parse_mode=markdown" $URL >  /dev/null


fi