FROM docker:git

RUN apk add --update \
		bash \
	&& rm -rf /var/cache/apk/*

ENV DIR /usr/src/official-images
WORKDIR $DIR
COPY . $DIR

EXPOSE 80
RUN ln -s "$(readlink -f bashbrew/bashbrew.sh)" /usr/local/bin/bashbrew

VOLUME $DIR/bashbrew/logs $DIR/bashbrew/src
