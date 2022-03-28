#!/bin/bash

# download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/0.34.0/install.sh | bash
. ~/.nvm/nvm.sh

# create our working directory if it doesn't exist
DIR="/home/ec2-user/express-app"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else 
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi