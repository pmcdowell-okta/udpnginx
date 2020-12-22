FROM nginx

RUN apt-get update -y
RUN apt-get install vim -y

ADD run.sh /run.sh

CMD ["/run.sh"]

# Minify nginx.conf
# cat nginx.conf  | perl -pe 's/\$/\\\$/g'  | perl -pe 's/\n/\\n/g' | perl -pe 's/ +/\ /g' > nginx.minified

# test locally
# docker run -it -p 80:80  -e NGINX_CONF=''  mynginx xx

