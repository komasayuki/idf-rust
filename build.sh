#!/bin/bash

# docker build -t komasayuki/idf-rust .

# docker buildx create --use --name multi-arch
# docker buildx inspect --builder multi-arch --bootstrap
# docker login --username=<username>
docker buildx build --platform linux/amd64,linux/arm64 -t komasayuki/idf-rust --push .

