FROM ubuntu
MAINTAINER Kimbro Staken
EXPOSE 3000
ENV PORT 80

RUN apt-get install -y software-properties-common python-software-properties python
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y nodejs
#RUN apt-get install -y nodejs=0.6.12~dfsg1-1ubuntu1
RUN mkdir /var/www

ADD start.sh /var/www/start.sh
ADD app.js /var/www/app.js
ADD package.json /var/www/package.json

CMD ["/bin/sh" "/var/www/start.sh"]
