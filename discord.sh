#!/bin/sh
BOTNAME=Julius
THUMBNAIL_URL="https://cdn-icons-png.flaticon.com/512/5261/5261867.png"
AVATAR_URL="https://e7.pngegg.com/pngimages/951/800/png-clipart-debian-linux-installation-fedora-operating-systems-online-text-logo-thumbnail.png"
WEBHOOK="https://discord.com/api/webhooks/1075777330758307870/bLXwE34Rh8eaEpwW7UjVcm9LDKgOWkW8m1Vu-6XD4UwwMMgvGcbOe2rmv0bVPSYK5eUB"
DATE=$(date +"%d-%m-%Y-%H:%M:%S")
server="VPS"
TMPFILE=$(mktemp)

# Embed Webhook Configuration

    IP=`echo $SSH_CLIENT | awk '{ ip = $1 } END { print ip }'`

    curl -s "https://ipapi.co/${IP}/json/" > $TMPFILE

    getCurrentTimestamp() { date -u --iso-8601=seconds; };

    #Sends The Webhook	
        curl -i --silent \
        -H "Accept: application/json" \
        -H "Content-Type:application/json" \
        -X POST \
        --data  '{
            "username": "'"$BOTNAME"'",
            "avatar_url": "'"$AVATAR_URL"'",
            "embeds": [{
                "color": 12976176,
                "title": "SSH Login Détections",
                "thumbnail": { "url": "'"$THUMBNAIL_URL"'" },
                "author": { "name": "'"$BOTNAME"'", "icon_url": "'"$AVATAR_URL"'" },
                "footer": { "icon_url": "'"$AVATAR_URL"'", "text": "'"$BOTNAME"'" },
                "description": "**Details server**\n \\👤 Utilisateur: '\`$(whoami)\`' \n \\👤 server type: '\`$server\`' \n \\🖥️ HostName: '\`$(hostname)\`' \n \\🕐 Time: '\`$DATE\`' \n\n **Connexion IP**\n \\📡 IP: '\`${IP}\`' \n📡 Whois: https://norsiide.be/whois/ip?whois='${IP}'",
                "timestamp": "'$(getCurrentTimestamp)'"
            }]
        }' $WEBHOOK > /dev/null

#Checks The TMP File Before Deletion

checkdir() {
    if [ -e $TMPFILE ]; then
        rm -fr $TMPFILE
    else
        echo "$TMPFILE Aucun fichier"
    fi
}
checkdir