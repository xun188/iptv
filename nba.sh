cd /mnt/sda/iptv
# https://newtv.fun/Uf5R1
# curl --retry 5 --retry-max-time 2  -O "https://newtv.fun/cifFTe"
#下载文件进行对比
curl -O "https://newtv.fun/QEuKOD"
FIND_FILE="/mnt/sda/iptv/QEuKOD"
FIND_STR="livednow"
# 判断匹配函数，匹配函数不为0，则包含给定字符
if [ `grep -c "$FIND_STR" $FIND_FILE` -ne '0' ];then
    cp QEuKOD /mnt/sda/iptv/all.m3u
    sed -n '/NBA常规赛/,+1p' QEuKOD  >> tmp.txt
    sed -i -e '/英文原声/{n;d}' tmp.txt
    sed -i '/英文原声/d' tmp.txt
    sed -i -e '/重播/{n;d}' tmp.txt
    sed -i '/重播/d' tmp.txt
    sed -i -e '/回顾/{n;d}' tmp.txt
    sed -i '/回顾/d' tmp.txt
    sed -i -e '/二路/{n;d}' tmp.txt
    sed -i '/二路/d' tmp.txt
    FIND_FILEE="/mnt/sda/iptv/tmp.txt"
    FIND_STRE="livednow"
    # 判断匹配函数，匹配函数不为0，则包含给定字符
    if [ `grep -c "$FIND_STRE" $FIND_FILEE` -ne '0' ];then
            cp /mnt/sda/iptv/tmp.txt /mnt/sda/iptv/nba.m3u
        else
            cp QEuKOD /mnt/sda/iptv/nba.m3u
    fi
fi
rm -rf tmp.txt
rm -rf QEuKOD
git add -A
git commit -m 'update'
git push origin main --force
#wget https://newtv.fun/cifFTe -O /mnt/sda/cifFTe.m3u
