#!/bin/sh
docker kill $(docker ps -q --filter="ancestor=ddosify/ddosify")