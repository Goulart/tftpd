#!/bin/sh
#set -e

destdir=${destdir:-/var/tftpboot}
uid=$(stat -c%u "$destdir")
gid=$(stat -c%g "$destdir")
groupadd -g $gid tftp
useradd -g $gid -u $uid -M -s /sbin/nologin tftp
/usr/sbin/in.tftpd -vvv -4 -L -p -s -u tftp $destdir
