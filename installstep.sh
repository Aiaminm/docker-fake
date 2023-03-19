apt-fast update -y

apt-fast install software-properties-common nano sudo wget curl screen nodejs  -y 
add-apt-repository ppa:qbittorrent-team/qbittorrent-stable 
apt-fast update -y
apt-fast install qbittorrent-nox -y

npm install https://github.com/Aiaminm/fleek-storage-js



mkdir  /root/.config/
mkdir /root/.config/qBittorrent/
cp /qbit.conf /root/.config/qBittorrent/qBittorrent.conf
cp -r /rss /root/.config/qBittorrent/
