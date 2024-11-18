#for activate my rule
#sh /usr/share/wifi/get.sh
/etc/init.d/alist stop
chmod +x alist
cp /mnt/sda/iptv/alist /mnt/sda/alist/alist
/etc/init.d/alist start
rm -rf alist
