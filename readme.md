<p align="center"><img src="https://norsiide.be/images/logo/logo.png" width="100" alt="norsiide"></p>

# SSH login notifications

[![WebSite](https://img.shields.io/website?down_message=Offline&label=WebSite&up_message=Online&url=https%3A%2F%2Fnorsiide.be)](https://norsiide.be)
[![Discord](https://img.shields.io/discord/1126981605785866341?color=5865f2&label=Discord&logo=discord&logoColor=fff&style=flat-square)](https://discord.gg/EV3fAhFZJT)

**SSH login Notifications** est un petit script qui vous permet d'etre avertie lors d'une connexion SSH

![Screenshot](https://norsiide.be/images/github/ssh-login/screen-discord.png)
![Screenshot](https://norsiide.be/images/github/ssh-login/screen-telegram.png)

## Notifications supporter 
* [Discord](https://norsiide.be)
* [Telegram](https://norsiide.be)

# Installations du system

(1) Installer les dependance

```
apt install curl && git
```
(2) Puis on va dans le dossier ( opt )
 
```
cd /opt/
```
(4) Maintenant on peut ajouter le repos
 
```
git clone https://github.com/Norsiide/ssh-login.git
```

(5) On activer les scripts
 
```
sh /opt/ssh-login/deploy.sh
```
(6) Config
* Discord
La on va ajouter le webhook de discord
    - WEBHOOK="DISCORD WEEBHOOK" par WEBHOOK="https://discordapp.com/api/webhooks/1214859100572090388/l4vnc5pezh6gEDuE4HuX-4P8KZOPClvE5fL_M6Dj9BnDmXIJfm579Pgj3KPjjC-0Mlx3"
![Screenshot](https://github.com/Norsiide/ssh-login/blob/main/img/webhook.png)

* Telegram
La on va ajouter le bot [BotFather](https://telegram.me/BotFather)
    - USERID="USERID" = votre id utilisateur
    - TOKEN="id:token" token de création du bot pour le salon
    ![Screenshot](https://github.com/Norsiide/ssh-login/blob/main/img/telegram.png)


(7) Maintenant nous pouvons tester le scripts
 
```
sh /etc/profile.d/ssh-alert.sh
```
