#!/bin/bash
#A script to bind my Home directories to an external partition/device mounted at /mnt/Storage/
#Kevin Mostert
#08/04/2019
#Place this in /usr/local/bin/ or /home/yourusername/bin

mount --bind /mnt/Storage/Documents /home/kevin/Documents
mount --bind /mnt/Storage/Downloads /home/kevin/Downloads
mount --bind /mnt/Storage/Music /home/kevin/Music
mount --bind /mnt/Storage/Pictures /home/kevin/Pictures
mount --bind /mnt/Storage/Videos /home/kevin/Videos