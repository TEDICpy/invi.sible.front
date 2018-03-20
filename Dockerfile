FROM node:6
MAINTAINER Lu Pa <admin@tedic.org>

ENV DEBIAN_FRONTEND noninteractive
ENV CODE /usr/src/app

WORKDIR $CODE
COPY package.json .

# Copy code to conatiner volume
COPY . .
COPY docker-entrypoint.sh /

#RUN npm install

CMD ["npm","run","build"]

ENTRYPOINT ["/docker-entrypoint.sh"]
