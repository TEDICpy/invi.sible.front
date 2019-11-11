FROM node:10
MAINTAINER Lu Pa <admin@tedic.org>

ENV DEBIAN_FRONTEND noninteractive
ENV CODE /usr/src/app

WORKDIR $CODE

COPY docker-entrypoint.sh /

CMD ["npm","run","build"]

ENTRYPOINT ["/docker-entrypoint.sh"]
