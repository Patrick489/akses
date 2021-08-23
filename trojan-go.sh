#!/bin/sh

echo "Getting the latest version of trojan-go"
latest_version="$(wget --no-check-certificate -qO- https://api.github.com/repos/p4gefau1t/trojan-go/tags | grep 'name' | cut -d\" -f4 | head -1)"
echo "${latest_version}"
trojango_link="https://github.com/p4gefau1t/trojan-go/releases/download/${latest_version}/trojan-go-linux-amd64.zip"

mkdir -p "/usr/bin/trojan-go"
mkdir -p "/etc/trojan-go"

cd `mktemp -d`
wget -nv "${trojango_link}" -O trojan-go.zip
unzip -q trojan-go.zip && rm -rf trojan-go.zip

mv trojan-go /usr/bin/trojan-go/trojan-go && chmod +x /usr/bin/trojan-go/trojan-go
mv geoip.dat /etc/trojan-go/geoip.dat
mv geosite.dat /etc/trojan-go/geosite.dat
mv example/trojan-go.service /etc/systemd/system/trojan-go.service

# if config.json didn't exist, use the example server.json 
cat> /etc/trojan-go/config.json << END

systemctl daemon-reload
systemctl reset-failed

echo "trojan-go is installed."
