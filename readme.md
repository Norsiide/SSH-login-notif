<p align="center"><img src="https://norsiide.be/images/logo/logo.png" width="100" alt="norsiide"></p>

# SSH login notifications

[![WebSite](https://img.shields.io/website?down_message=Offline&label=WebSite&up_message=Online&url=https%3A%2F%2Fnorsiide.be)](https://norsiide.be)
[![Discord](https://img.shields.io/discord/1044976597402394664?color=5865f2&label=Discord&logo=discord&logoColor=fff&style=flat-square)](https://discord.gg/S5ZZufrY4v)

**SSH login Notifications** est un petit script qui vous permet d'etre avertie lors d'une connexion SSH

![Screenshot](https://norsiide.be/images/github/ssh-login/screen-discord.png)
![Screenshot](https://norsiide.be/images/github/ssh-login/screen-telegram.png)

## Notifications supporter 
* [Discord](https://norsiide.be)
* [Telegram](https://norsiide.be)

# Installations du system

(1) Installer le packet curl linux

```
apt-get install curl 
```

(2) Il faux maintenant ce deplacer dans le dossier 
 
```
cd /opt/
```
(3) Maintenant on peut ajouter le repos
 
```
git clone https://github.com/Norsiide/ssh-login.git
```

(4) On activer les scripts
 
```
sh /opt/ssh-login/deploy.sh
```
(4) Config
 
```Avant de tester le script il faux donner les accés au  discord.sh & telegram.sh```

(5) Maintenant nous pouvons tester le scripts
 
```
sh /etc/profile.d/ssh-alert.sh
```
