#!/bin/bash
#A script to bind my Home directories to an external partition/device mounted at /mnt/Storage/
#Kevin Mostert
#08/04/2019
#Place this in /usr/local/bin/ or /home/yourusername/bin

function realuser {

	if [ "$USER" == "root" ]
	then
		myname="$SUDO_USER"
	elif [ "$USER" != "root" ]
	then
		myname="$USER"
	fi
}

realuser
sleep 20s
mount --bind /mnt/Storage/Documents /home/"$myname"/Documents
mount --bind /mnt/Storage/Downloads /home/"$myname"/Downloads
mount --bind /mnt/Storage/Music /home/"$myname"/Music
mount --bind /mnt/Storage/Pictures /home/"$myname"/Pictures
mount --bind /mnt/Storage/Videos /home/"$myname"/Videos
mount --bind /mnt/Storage/Dropbox /home/"$myname"/Dropbox
mount --bind /mnt/Storage/Games /home/"$myname"/Games