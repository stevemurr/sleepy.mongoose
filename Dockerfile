FROM python:2.7.13-alpine3.6

RUN apk update && apk add build-base git
RUN easy_install pymongo==2.8.0

WORKDIR /workdir/1
RUN git clone https://github.com/stevemurr/sleepy.mongoose.git
WORKDIR /workdir/1/sleepy.mongoose

EXPOSE 27080

ENTRYPOINT [ "python", "httpd.py", "-m", "http://10.161.19.18:27017" ]

