# On install curl mais logiquement il et deja dessus vue quon la installer pour les RSYNC
	- apt install curl

# en suite on met tout les fichier dans le dossier /opt/ssh-login

# puis on activer le script 

	- sh /opt/ssh-login/deploy.sh

Puis pour finir on test avec la commande 

	- sh /etc/profile.d/ssh-alert.sh