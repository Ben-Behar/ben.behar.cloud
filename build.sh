#!/bin/bash
docker build . -t ben.behar.cloud:latest
docker build . -f Dockerfile.dev -t ben.behar.cloud:dev
#docker run -it -p 3000:3000 -v $(pwd)/secret:/app/secret/ ben.behar.cloud:dev
docker run -it -p 3000:3000 -v $(pwd):/app/ ben.behar.cloud:dev
