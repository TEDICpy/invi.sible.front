FROM node:6
MAINTAINER Lu Pa <admin@tedic.org>

ENV DEBIAN_FRONTEND noninteractive
ENV CODE /usr/src/app

WORKDIR $CODE

# Copy code to conatiner volume
COPY . .

COPY docker-entrypoint.sh /

CMD ["npm","run","build"]

ENTRYPOINT ["/docker-entrypoint.sh"]
