#!/bin/bash

rm .gitmodules

for entry in `ls ${HOME}/.vim/bundle`; do
  URL=$(git --git-dir=${HOME}/.vim/bundle/${entry}/.git config --get remote.origin.url);
  DIR=".vim/bundle/${entry}"
  echo $URL;
  echo $DIR;

cat >> ./.gitmodules << EOL
[submodule "${DIR}"]
path = ${DIR}
url = ${URL}
EOL

done
