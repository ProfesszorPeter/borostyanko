#!/usr/bin/env bash

#buildeli az image-et
docker build -t webdev:1.0 .
#elindítja a konténert aka felállítja az envirementet
docker-compose up -d
#belép a konténerbe
#az alábbi sor elől vedd ki a '#'et hogy működjön
#docker exec -it webdev sh

