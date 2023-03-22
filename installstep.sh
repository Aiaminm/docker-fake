apt-fast update -y

apt-fast install -y language-pack-zh-hans language-pack-zh-hans-base language-pack-zh-hant language-pack-zh-hant-base language-pack-ja


apt-fast install software-properties-common nano sudo wget curl screen nodejs  -y 
add-apt-repository ppa:qbittorrent-team/qbittorrent-stable 
apt-fast install npm -y
apt-fast update -y
apt-fast install qbittorrent-nox -y


mkdir  /root/.config/
mkdir /root/.config/qBittorrent/
cp /qbit.conf /root/.config/qBittorrent/qBittorrent.conf
cp -r /rss /root/.config/qBittorrent/

cd /root/
npm install https://github.com/Aiaminm/fleek-storage-js
cp /fleekupload.js /root/
