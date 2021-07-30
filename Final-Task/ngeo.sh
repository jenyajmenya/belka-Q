#!/bin/bash

dpkg -s nginx &> /dev/null
 if [ $? -ne 0 ]
 then
         echo "not installed"
         apt update && apt install -y && apt install gcc -y && apt install make -y
         apt install build-essential libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev libgd-dev libxml2 libxml2-dev uuid-dev libgeoip-dev wget -y
         wget http://nginx.org/download/nginx-1.20.0.tar.gz
         tar -zxvf nginx-1.20.0.tar.gz
         cd nginx-1.20.0
         ./configure --prefix=/var/www/html --sbin-path=/usr/sbin/nginx --conf-path=/etc/nginx/nginx.conf --http-log-path=/var/log/nginx/access.log --error-log-path=/var/log/nginx/error.log --with-pcre --lock-path=/var/lock/nginx.lock --pid-path=/var/run/nginx.pid --with-http_ssl_module --with-http_image_filter_module=dynamic --modules-path=/etc/nginx/modules --with-http_v2_module --with-stream=dynamic --with-http_addition_module --with-http_mp4_module --with-http_geoip_module --with-http_geoip_module=dynamic
          make && make install
          nginx -V
          # git clone https://github.com/tarmacmonsterg/hello-world/
          # if ! [ -d /etc/nginx/geoip/ ]
          # then
          #         mkdir /etc/nginx/geoip && cp -r ./hello-world/GeoLite2-Country_20210615/* /etc/nginx/geoip/
          # else
          #         cp -r ./hello-world/GeoLite2-Country_20210615/* /etc/nginx/geoip/
          # fi
 else
         echo "installed"
 fi