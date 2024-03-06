#!/bin/sh

# Votre USERID ou Channel ID pour afficher l'alerte et la clé, nous vous recommandons de créer un nouveau bot avec @BotFather sur Telegram
USERID="USERID"
TOKEN="id:token"

URL="https://api.telegram.org/bot$token/sendMessage"
DATE="$(date "+%d %b %Y %H:%M")"

if [ -n "$SSH_CLIENT" ]; then
	CLIENT_IP=$(echo $SSH_CLIENT | awk '{print $1}')

	SRV_HOSTNAME=$(hostname -f)
	SRV_IP=$(hostname -I | awk '{print $1}')

	IPINFO="https://norsiide.be/whois/ip?whois=$CLIENT_IP"

	TEXT="$(echo "Nouvelle connexion SSH sur le serveur! \n\n *Ip du clients*: $CLIENT_IP \n *Utilisateur*: $USER \n *Serveur* (*$SRV_HOSTNAME*) \n *Ip du serveur* (*$SRV_IP*) \n *Date*: $DATE \n *informations*: [$IPINFO]($IPINFO)")"

	curl -s -d "chat_id=$USERID&text=$TEXT&disable_web_page_preview=true&parse_mode=markdown" $URL >  /dev/null


fi