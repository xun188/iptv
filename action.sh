#for activate my rule
cp /mnt/sda/iptv/homeproxy /etc/config/homeproxy
/etc/init.d/homeproxy restart
sleep 5
rm -rf /mnt/sda/iptv/homeproxy
rm -rf /mnt/sda/gitee/homeproxy
sh /usr/share/wifi/get.sh
