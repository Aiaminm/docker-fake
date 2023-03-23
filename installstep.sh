apt update -y

apt install software-properties-common -y


apt install -y language-pack-zh-hans language-pack-zh-hans-base language-pack-zh-hant language-pack-zh-hant-base language-pack-ja
apt install nano sudo wget curl screen   -y 

add-apt-repository ppa:qbittorrent-team/qbittorrent-stable 
apt update -y
apt install qbittorrent-nox -y

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&\
apt update
apt install -y nodejs


mkdir  /root/.config/
mkdir /root/.config/qBittorrent/
cp /qbit.conf /root/.config/qBittorrent/qBittorrent.conf
cp -r /rss /root/.config/qBittorrent/

cp /fleekupload.js /root/
