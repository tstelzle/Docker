# Teeworlds Server in Docker

## Build new image
```ShellSession
docker build -t docker_teeworlds .
```

## Run new container
```ShellSession
docker run -d --name teeworlds -p 8303:8303/udp docker_teeworlds
```

## Start container
```ShellSession
docker start teeworlds
```

## Change config file for the server
The config file for the server can be changed by copying a new one to the following directory in the container: _/home/teeworlds/build/_

The config file has to be named: __config.cfg__

### Command to copy a new config file to the container:
```ShellSession
docker cp config.cfg teeworlds:/home/teeworlds/build/
```

