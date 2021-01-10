snap install docker && \
cd /root && \
git clone https://github.com/yarphen/vpn-do && \
cd vpn-do && \
mkdir -p /root/openvpn && \
mkdir -p /root/clients && \
IP=$(curl http://169.254.169.254/metadata/v1/interfaces/public/0/ipv4/address) && \
docker run -v /root/openvpn:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u tcp://$IP && \
docker run -v /root/openvpn:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki nopass && \
bash ./start.sh


