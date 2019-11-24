#!/bin/sh
docker build . -t dweidle/micronaut-data-jdbc
echo
echo
echo "To run the docker container execute:"
echo "    $ docker run -p 8080:8080 dweidle/micronaut-data-jdbc"
