Teeworlds Server in Docker

Build new image
docker build -t docker_teeworlds .

Run new container
docker run -d --name teeworlds -p 8303:8303/udp docker_teeworlds

Start container
docker start teeworlds

The config file for the server can be changed by copying a new one to the following directory in the container: /home/teeworlds/build/
The config file has to be named: config.cfg

Command to copy a new config file to the container:
docker cp config.cfg teeworlds:/home/teeworlds/build/

