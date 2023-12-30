#!/bin/sh
BOTNAME=Julius
THUMBNAIL_URL="https://cdn-icons-png.flaticon.com/512/5064/5064910.png"
AVATAR_URL="https://w7.pngwing.com/pngs/668/952/png-transparent-debian-arch-linux-computer-icons-desktop-linux-spiral-logo-magenta.png"
WEBHOOK="DISCORD WEEBHOOK"
DATE=$(date +"%d-%m-%Y-%H:%M:%S")
server="VPS"
TMPFILE=$(mktemp)

# Embed Webhook Configuration

    IP=`echo $SSH_CLIENT | awk '{ ip = $1 } END { print ip }'`

    curl -s "https://ipapi.co/${IP}/json/" > $TMPFILE

    getCurrentTimestamp() { date -u --iso-8601=seconds; };
    
    SRV_HOSTNAME=$(hostname -f)
    SRV_IP=$(hostname -I | awk '{print $1}')
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
                "description": "**Details server**\n \\👤 Utilisateur: '\`$(whoami)\`' \n \\👤 server type: '\`$server\`' \n \\🖥️ HostName: '\`$SRV_HOSTNAME\`' \n \\🕐 Time: '\`$DATE\`' \n\n **Connexion IP**\n \\📡 IP: '\`${IP}\`' \n📡 Whois: https://norsiide.be/whois/ip?whois='${IP}'",
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

