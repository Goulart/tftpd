# tftpd
Trivial FTP daemon container image
Very simple, based on alpine
Runs as the owner of the target directory

### Usage
#### Create directory and content not owned by root
```
$ ls -lap /var/tftp
drwxr-xr-x. 3 tftp tftp     54 Jul  5 16:50 ./
drwxr-xr-x. 7 root root    111 Jul  5 16:32 ../
-r-xr-xr-x. 1 tftp tftp 924888 Jul  5 16:33 bootx64.efi
-rw-r--r--. 1 tftp tftp    229 Jul  5 16:50 grub.cfg
drwxr-xr-x. 2 tftp tftp     39 Jul  5 16:46 rhel8/
```

#### Run
`docker run -d --rm --name tftpd --net host -v /var/tftp:/var/tftpboot:ro,Z tftpd:TAG`
