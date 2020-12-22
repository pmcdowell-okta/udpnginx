

docker build -t udpnginx .  

cat nginx.conf  | perl -pe 's/\$/\\\$/g'  | perl -pe 's/\n/\\n/g' | perl -pe 's/ +/\ /g' > nginx.minified



