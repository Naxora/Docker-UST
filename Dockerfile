# Author Naxora <https://github.com/Naxora>

# Start with Ubuntu base image
FROM ubuntu:latest

# Install packages
RUN apt-get update && apt-get install -y samba nano transmission-daemon supervisor

# Set password
RUN (echo YOURSMBPWD; echo YOURSMBPWD) | smbpasswd -sa root && \
  # Stop Samba
  service smbd stop

RUN mkdir /mnt/SharedFolder
RUN mkdir /mnt/SharedFolder/Torrents
RUN chgrp -R debian-transmission /mnt/SharedFolder/Torrents
RUN chmod -R 770 /mnt/SharedFolder/Torrents

# Run Services
CMD ["/usr/bin/supervisord"]
