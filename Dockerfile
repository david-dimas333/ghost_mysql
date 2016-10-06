FROM ghost

MAINTAINER David, david.dimas333@gmail.com

# Add in better default config
ADD config.example.js config.example.js

# Add digitalgarage theme
COPY themes/digitalgarage content/themes/digitalgarage

# Change favicons
ADD favicons/favicon.ico            core/shared/favicon.ico
ADD favicons/large.png              core/built/assets/img/large.png
ADD favicons/medium.png             core/built/assets/img/medium.png
ADD favicons/small.png              core/built/assets/img/small.png
ADD favicons/touch-icon-ipad.png    core/built/assets/img/touch-icon-ipad.png
ADD favicons/touch-icon-iphone.png  core/built/assets/img/touch-icon-iphone.png

# entrypoint
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# Install GIT
#RUN apt-get update && apt-get install -y git

# Set Production Mode
ENV NODE_ENV production

# Port 2368 for ghost server
EXPOSE 2368

# npm start
CMD ["npm", "start"]