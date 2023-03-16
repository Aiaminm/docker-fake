apt-fast update -y

apt-fast install software-properties-common nano sudo wget curl screen  -y 
add-apt-repository ppa:qbittorrent-team/qbittorrent-stable 
apt-fast update -y
apt-fast install qbittorrent-nox -y



mkdir /root/.config/qBittorrent/
cp /qbit.conf /root/.config/qBittorrent/qBittorrent.conf
