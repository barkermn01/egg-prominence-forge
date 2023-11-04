FROM        ghcr.io/pterodactyl/yolks:java_18

RUN         mkdir /home/container/server
COPY        ./server_files/* /home/container/server

WORKDIR     /home/container/server
COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]