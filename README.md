# Teeworlds Server in Docker

This Dockerfile is hosting a teeworlds server.


## Basic Starting
To start the server with the basic config file you will need to run the following commands.

```ShellSesssion
make build-image
make container-run
```

### Connecting To The Server
The server can be used in the local network.
It should automatically be listed in the teeworlds server search. 
If it is not listed you have to connect to the IP address of the computer hosting the server.
If you wanna make the server public you have to modify your router settings.

### Makefile Commands

All the available Makefile commands can be listed with the following command.
```ShellSession
make default
```

## Changing Config
To change the config you can modify the config.cfg in the config directory.
Do not delete the file as this is the file used for the server configuration. Only modify it. 
After changing the file run
```ShellSession
make restart
```
The available config options can be found here: 

https://teeworlds.com/?page=docs&wiki=server_settings

