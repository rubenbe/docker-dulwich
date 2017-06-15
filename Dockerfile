FROM python:3.5.3-alpine

WORKDIR /usr/src/app

RUN apk add --no-cache gcc musl-dev && \
pip install --no-cache-dir dulwich==0.17.3 geventhttpclient~=1.3.1 && \
apk del --no-cache gcc musl-dev
CMD [ "dulwich" ]
