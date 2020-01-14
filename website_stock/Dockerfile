# Dockerfile to start a teeworlds server
# Based on Ubuntu

FROM nginx

MAINTAINER github.com/tstelzle

# Update & Upgrade the ubuntu image
RUN apt-get update
RUN apt-get install apt-utils -y
RUN apt-get upgrade -y
RUN apt-get autoremove -y

# install git command
RUN apt-get install git -y

# install sqlite3
RUN apt-get install sqlite3 -y

#install php
RUN apt-get install php -y

# Download and Build website_stock
RUN cd /home && git clone https://github.com/tstelzle/website_stock.git --recurse-submodules
RUN rm /usr/share/nginx/html/index.html
RUN cp -r /home/website_stock/* /usr/share/nginx/html/ 

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
