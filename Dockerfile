FROM certbot/certbot:latest

MAINTAINER <jpreuss@pavuciny.com>

RUN apk add --no-cache gcc g++ libxml2-dev libxslt-dev && \
    pip install zeep && \
    pip install dns-lexicon && \
    lexicon --version && \
    apk dev gcc g++ libxml2-dev libxslt-dev;
