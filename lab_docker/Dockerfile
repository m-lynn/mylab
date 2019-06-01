FROM debian
RUN apt-get update && apt-get -y upgrade && apt-get -y install nginx &&  apt-get  clean && \
    cd /var/www/ &&  rm -rf ./* && \
    mkdir -p lynn.com/img && \
    chmod -R 754 /var/www/lynn.com/ && \
    useradd Mariya && \
    groupadd Miroshnikova && \
    usermod -aG Miroshnikova Mariya && \
    chown -R Mariya:Miroshnikova /var/www/lynn.com/ && \
    sed -i 's/\/var\/www\/html/\/var\/www\/lynn.com/g' /etc/nginx/sites-enabled/default && \
    sed -i 's/www-data/Mariya/g' /etc/nginx/nginx.conf
ADD index.html /var/www/lynn.com/ 
ADD img.jpg /var/www/lynn.com/img/
CMD ["nginx", "-g", "daemon off;"]    
