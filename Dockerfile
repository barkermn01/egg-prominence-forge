FROM        ghcr.io/pterodactyl/yolks:java_18

LABEL       org.opencontainers.image.source https://github.com/barkermn01/egg-prominence-forge
LABEL       org.opencontainers.image.description "Prominence Forge 2"
LABEL       org.opencontainers.image.licenses MIT

USER        root
COPY        ./server_files/ /home/container/server_files/
RUN         chmod -R 0755 /home/container/server_files/
RUN         chown -R container:container /home/container/server_files/

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]