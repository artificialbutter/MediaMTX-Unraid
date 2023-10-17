FROM alpine:3

RUN apk --no-cache add curl

WORKDIR /app
RUN mkdir /app/config/

ADD ./bin/LICENSE ./bin/mediamtx ./start.sh /app/

CMD sh start.sh

EXPOSE 8554/tcp
EXPOSE 1935/tcp
EXPOSE 8888/tcp
EXPOSE 8889/tcp