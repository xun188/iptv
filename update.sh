# update my router
cd /mnt/sda/iptv/
git pull
sh action.sh
git add -A
git commit -m 'update'
git push origin main --force

