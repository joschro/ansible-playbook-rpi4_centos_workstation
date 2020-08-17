# ansible-playbook-rpi4_centos_workstation
Set up a Raspberry Pi 4 2/4/8GB as a graphical workstation running on CentOS 8

Get the software
----------------
From https://people.centos.org/pgreco/CentOS-Userland-8-stream-aarch64-RaspberryPI-Minimal-4/ grab the latest image by right clicking on it and selecting "save as"; the extension is ".raw.xz".

Write the image on a SD card, like
```
xzcat CentOS-Userland-8-stream-aarch64-RaspberryPI-Minimal-4-sda.raw.xz | dd status=progress bs=4M of=/dev/sda && sync;sync;sync
```
in case you are using a Linux system and the SD card is accessible under /dev/sda. BE CAREFUL to not wipe your system if the harddisk of your computer resides under /dev/sda !!!

Set up the new system
---------------------
Insert the SD card into your Raspberry Pi 4 and turn on power.
Login in with
```
user: root
password: centos
```

Enter
```
curl https://github.com/joschro/ansible-playbook-rpi4_centos_workstation/raw/master/run.sh | sh
```
