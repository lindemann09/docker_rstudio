#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt install docker-compose
sudo gpasswd -a $USER docker

echo "PLEASE LOG OUT AND IN AGAIN. RUN: docker-compose up -d"
