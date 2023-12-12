#!/bin/sh
# Create By ifeng
# Web Site:https://www.hicairo.com
# Telegram:https://t.me/HiaiFeng

sed -i "s#UUID#$UUID#g;s#VMESS_WSPATH#$VMESS_WSPATH#g;s#VLESS_WSPATH#$VLESS_WSPATH#g" /etc/v2ray/config.json
sed -i "s#VMESS_WSPATH#$VMESS_WSPATH#g;s#VLESS_WSPATH#$VLESS_WSPATH#g" /etc/nginx/nginx.conf
# exec "$@"

# Please delete the # sign at the beginning of the next line and replace the domain name in this line of code with the domain name assigned to your project by Replit.
#while true ;do curl https://xx.xx.repl.co; sleep 300; done &

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
