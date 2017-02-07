FROM node:0.12

RUN npm install -g jshint phantomjs

ENV PHANTOMJS_BIN=/usr/local/bin/phantomjs

WORKDIR /app
ADD . .
RUN chown -R 1000:1000 /app

USER 1000

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
