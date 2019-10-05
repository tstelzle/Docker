# Dockerfile to start a teeworlds server
# Based on Ubuntu

FROM ubuntu

MAINTAINER github.com/tstelzle

# Update & Upgrade the ubuntu image
RUN apt-get update
RUN apt-get install apt-utils -y
RUN apt-get upgrade -y
RUN apt-get autoremove -y

# install git command
RUN apt-get install git -y

# install building dependencies
RUN apt-get install build-essential cmake git libfreetype6-dev libsdl2-dev libpnglite-dev libwavpack-dev python3 -y

# Download and Build teeworlds
RUN cd /home && git clone https://github.com/teeworlds/teeworlds --recurse-submodules
RUN cd /home/teeworlds && mkdir -p build
RUN cd /home/teeworlds/build && cmake .. && make

# Create default config
RUN touch /home/teeworlds/build/config.cfg
RUN echo "sv_name docker_teeworlds\nsv_map dm1\nsv_scorelimit 20\nsv_timelimit 10\nsv_gametype dm\nsv_motd This is teeworlds running in docker.\nsv_max_clients 12" >> /home/teeworlds/build/config.cfg

EXPOSE 8303/udp
USER 0

ENTRYPOINT /home/teeworlds/build/teeworlds_srv -f config.cfg
