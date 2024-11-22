#for activate my rule
#sh /usr/share/wifi/get.sh
/etc/init.d/homeproxy restart
/etc/init.d/alist stop
git pull
chmod +x alist
mv alist /mnt/sda/alist/
/etc/init.d/homeproxy stop
/etc/init.d/alist start