#!/bin/bash

export PORT=80
cd /var/www
npm install
nohup npm start &
