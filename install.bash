#! /usr/bin/env bash
# set -x
jm="$HOME/.jdk-manager"

if [[ -d "$jm" ]];
then
  rm -rf "$jm"/*
else
  mkdir "$jm"
fi

cp "jdk-manager.bash" "$jm"

if ! grep -Fxq "source $jm/jdk-manager.bash"  "$HOME/.bash_profile" 
then
  echo "source $jm/jdk-manager.bash" >> "$HOME/.bash_profile"
fi
