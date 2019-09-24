#!/bin/bash

GREEN=$(tput setaf 2)
NORMAL=$(tput sgr0)

printf "${GREEN}Pulling Docker image (should have already been done, just making sure)${NORMAL}\n"
docker pull gcr.io/tfx-oss-public/tfx:workshop-latest

printf "${GREEN}Creating directories${NORMAL}\n"
mkdir workshop
mkdir workshop/airflow
cd workshop
export WSHOME=$PWD

printf "${GREEN}Starting workshop container${NORMAL}\n\n"
printf "${GREEN}Next Step:${NORMAL}\n"
printf "${GREEN}When you see the prompt 'root@<hex id>:/#'${NORMAL}\n"
printf "${GREEN}Enter './setup_demo.sh'${NORMAL}\n"
docker-compose -f ../docker-compose.yaml run --service-ports tfx
