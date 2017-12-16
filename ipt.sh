sudo iptables -t nat -A POSTROUTING -o ham0 -j MASQUERADE  
sudo iptables -A FORWARD -i ham0 -o wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT  
sudo iptables -A FORWARD -i wlan0 -o ham0 -j ACCEPT
