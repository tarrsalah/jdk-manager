#! /usr/bin/env bash

#set -u
#set -e

#to modify
JDK_ROOT="$HOME/local" # change it to the directory that contain the jdk's

JDK_PATTERN="[0-9]\.[0-9]\.+([0-9])?(_+([0-9]))"
CURRENT_JDK="$JDK_ROOT/.current_jdk"
SESSION=0;

# colors 
textred=$(tput setaf 1)
texttyellow=$(tput setaf 3)
textreset=$(tput sgr0)
textgreen=$(tput setaf 2)

########################################################################""
# functions 
########################################################################"

# ascii art
_print_java_ascii() {
printf ${texttyellow}"
   _     _ _                                                     
  (_) __| | | __     _ __ ___   __ _ _ __   __ _  __ _  ___ _ __ 
  | |/ _  | |/ /____|  _   _ \ / _  |  _ \ / _  |/ _  |/ _ \  __|
  | | (_| |   <_____| | | | | | (_| | | | | (_| | (_| |  __/ |   
 _/ |\__ _|_|\_\    |_| |_| |_|\__ _|_| |_|\__ _|\__  |\___|_|   
|__/                                             |___/           

"${textreset}                                                     
}

_is_jdk() {
  return `[[ "$1" == jdk${JDK_PATTERN} ]]`
}


# init the current symlink
_init_current() {
  if [[ ! -L $CURRENT_JDK ]];
  then
    ln -s /dev/null $CURRENT_JDK
  fi
}

_get_current_jdk() {
  basename `readlink -f $CURRENT_JDK`
}
# list all available jdks in the JDK_ROOT directory
_ls_jdks() {
  for file in $(ls $JDK_ROOT)
  do
    if `_is_jdk "$file"`
     then
      if [[ $file == `_get_current_jdk` ]]
       then
	printf "${textgreen} > $file\n"
      else
	printf "${textreset}   $file\n"
      fi
    fi
  done
}

_set_current_jdk() {
  jdk="jdk$1"
  if `_is_jdk $jdk` && [[ -d "$JDK_ROOT/$jdk" ]]
  then
    rm "$CURRENT_JDK"
    ln -sf "$JDK_ROOT/$jdk" "$CURRENT_JDK"
    printf "${textgreen} INFO: ${textreset}Updating the \$JAVA_HOME to $JDK_ROOT/${textgreen}`_get_current_jdk`${textreset}  .\n\n";
    _ls_jdks;
  else
    printf "${textred} ERROR: ${textreset} there is no $jdk in $JDK_ROOT \n"
  fi
}

########################################################################""
# main
########################################################################"

export JAVA_HOME=$CURRENT_JDK;
export PATH="$JAVA_HOME/bin:$PATH"

jdk() {
 if [[ $SESSION -eq 0 ]];
 then
   _print_java_ascii;
   SESSION=1;
 fi
 _init_current;

 if [[ $# -eq 0 ]]
 then
   _ls_jdks;
 else
   _set_current_jdk $1
 fi
}
