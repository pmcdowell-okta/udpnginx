
**Rebuild the image**

`docker build -t udpnginx .`  

**Prep Nginx.conf for Environment Variable**

`cat nginx.conf  | perl -pe 's/\$/\\\$/g'  | perl -pe 's/\n/\\n/g' | perl -pe 's/ +/\ /g' > nginx.minified`

**Environment Variable used for nginx.conf**

`**NGINX_CONF**="Your nginx.conf Minified"`

