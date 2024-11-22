#for activate my rule
#sh /usr/share/wifi/get.sh
/etc/init.d/alist stop
cd /mnt/sda/gitee/
git pull
chmod +x alist
mv alist /mnt/sda/alist/
git add -A
git commit -m 'update'
git push origin main --force
/etc/init.d/homeproxy stop
/etc/init.d/alist start
cd /mnt/sda/iptv/