# Docker-UbuntuSambaTransmission

This is a Docker image.
Using minimal Ubuntu Samba and Transmission.

To do:
- Install ubuntu
- install docker

Create two folder in /mnt
- SharedFolder
- Torrents

In Dockerfile change YOURSMBPWD to your samba password.

In this config your user is root.

Transmission settings file: settings.json

Samba config file: smb.conf

------------


Run:
- docker-compose build
- docker-compose up -d

Now you can access to your Transmission and Samba share.

Transmission: http://serveripaddress:9091
Supervisord: http://serveripaddress:9001
