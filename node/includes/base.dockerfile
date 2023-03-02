RUN apk add --no-cache jq curl wget vim nano git zip

ENV YARN_CACHE_DIR "/tmp/yarn-cache"
ENV NPM_CACHE_DIR "/tmp/npm-cache"

RUN mkdir -p ${YARN_CACHE_DIR} && \
    mkdir -p ${NPM_CACHE_DIR} && \
    yarn config set cache-folder ${YARN_CACHE_DIR} && \
    npm config get cache ${NPM_CACHE_DIR} --global

WORKDIR /app

CMD ["tail", "-f", "/dev/null"]

EXPOSE 80
