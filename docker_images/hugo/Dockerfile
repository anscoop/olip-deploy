FROM i386/alpine:latest

# Configuration variables
ENV SITE_DIR '/hugo/'
ENV HUGO_BASE_URL http://localhost:1313

RUN apk add --no-cache git openssl curl \
    && curl -L https://github.com/gohugoio/hugo/releases/download/v0.54.0/hugo_0.54.0_Linux-32bit.tar.gz | tar -xz \
    && mv hugo /usr/bin/hugo \
    && apk del curl \
    && apk add --update nodejs \
    && apk add --update nodejs-npm \
    && mkdir -p ${SITE_DIR}

WORKDIR ${SITE_DIR}

COPY package.json ./
RUN npm install

COPY api ./api
COPY app.js ./

EXPOSE 3000

ENTRYPOINT npm start
