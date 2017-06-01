echo "Installing shairport-sync dependencies"
apt-get update
apt-get -y install build-essential git autoconf automake libtool libdaemon-dev libasound2-dev libpopt-dev libconfig-dev avahi-daemon libavahi-client-dev libssl-dev libsoxr-dev


echo "Configuring shairport-sync"
autoreconf -i -f
./configure --sysconfdir=/etc --with-alsa --with-avahi --with-ssl=openssl --with-soxr --with-metadata --with-systemd

echo "Compiling"
make

echo "Installing"
sudo make install
