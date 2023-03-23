apt update -y

apt install software-properties-common -y
add-apt-repository ppa:apt-fast/stable
apt-get update
apt-get -y install apt-fast

apt-fast install -y language-pack-zh-hans language-pack-zh-hans-base language-pack-zh-hant language-pack-zh-hant-base language-pack-ja
apt-fast install nano sudo wget curl screen   -y 

add-apt-repository ppa:qbittorrent-team/qbittorrent-stable 
apt-fast update -y
apt-fast install qbittorrent-nox -y

curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&\
apt-fast install -y nodejs


mkdir  /root/.config/
mkdir /root/.config/qBittorrent/
cp /qbit.conf /root/.config/qBittorrent/qBittorrent.conf
cp -r /rss /root/.config/qBittorrent/

cd /root/
npm install https://github.com/Aiaminm/fleek-storage-js
cp /fleekupload.js /root/
