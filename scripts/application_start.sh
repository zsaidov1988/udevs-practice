#!/bin/bash

sudo chmod _R 777 /home/ec2-user/express-app
# navigate into our working directory
cd /home/ec2-user/express-app

# add npm and node the path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # loads nvm bash_completion

npm install
node index.js > app.out.log 2> app.err.log < /dev/null &
