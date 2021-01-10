docker run -v /root/openvpn:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full $1 nopass > /dev/null && \
docker run -v /root/openvpn:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient $1 > /root/clients/$1.ovpn && \
cat /root/clients/$1.ovpn