FROM alpine

RUN apk add bash npm nodejs

COPY . /src

RUN cd /src && npm install

ENTRYPOINT ["node", "src/app.js"]