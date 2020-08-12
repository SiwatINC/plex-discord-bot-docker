echo "Starting Container Initialization Script."
if [ -z "$(ls -A /config)" ]; then
   echo "Initializing . . ."
   cd /config
   git clone https://github.com/danxfisher/Plex-Discord-Bot.git
   cd Plex-Discord-Bot
   npm install
   node index.js
   exit 0
else
   cd /config/Plex-Discord-Bot
   npm install
   node index.js
   exit 0
fi
