FROM siwatinc/nodejsubuntu_base_image
RUN apt-get update && apt-get install -y ffmpeg
CMD rm ./initialize.sh | : && wget https://raw.githubusercontent.com/SiwatINC/plex-discord-bot-docker/master/initialize.sh && chmod +x ./initialize.sh && ./initialize.sh
