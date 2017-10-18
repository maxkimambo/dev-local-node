FROM ubuntu:17.10

RUN ln -nsf /bin/bash /bin/sh
RUN apt-get update && apt-get install build-essential git \
    curl python3 python3-setuptools -y 
RUN easy_install3 pip

ENV NPM_CONFIG_LOGLEVEL info
RUN curl -SLO "https://nodejs.org/dist/v8.7.0/node-v8.7.0-linux-x64.tar.gz" 
RUN tar -xvzf "node-v8.7.0-linux-x64.tar.gz" -C /usr/local --strip-components=1 
RUN rm "node-v8.7.0-linux-x64.tar.gz" 
RUN ln -s /usr/local/bin/node /usr/local/bin/nodejs
RUN ln -s /usr/bin/python3 /usr/local/bin/python
# Install dev tools
RUN npm install -g --silent babel-cli nodemon gulp grunt
RUN npm link babel-cli nodemon gulp
# add my preferences and scripts
ADD bashrc /root/.bashrc 
VOLUME ["/app"]


