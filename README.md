# jdk-manager


   _     _ _                                                     
  (_) __| | | __     _ __ ___   __ _ _ __   __ _  __ _  ___ _ __ 
  | |/ _  | |/ /____|  _   _ \ / _  |  _ \ / _  |/ _  |/ _ \  __|
  | | (_| |   <_____| | | | | | (_| | | | | (_| | (_| |  __/ |   
 _/ |\__ _|_|\_\    |_| |_| |_|\__ _|_| |_|\__ _|\__  |\___|_|   
|__/                                             |___/           
-----------------------------------------------------------------

A very simple bash script to manage **multiple** `jdks` installation.

## installation

'$ clone git://github.com/tarrsalah/jdk-manager.git ~/.jdk-manager'
'$ echo ". ~/.jdk-manager/jdk-manager.bash" >> ~/.bash_profile'

## customization

In `jdk-manager.bash`, set the variable `JDK_ROOT` to the directoty where all the jdk's are stored.
By default, `jdk-manager` assume that you store all the downloaded jdks in `~/local`.

## usage

* to list all the jdk's installed:
'$ jdk'

![list jdks](https://raw.github.com/tarrsalah/jdk-manager/master/img/jdk.png)

* to pick a jdk:
'$ jdk ${complete-jdk-version}'


## TODO

* Add automatic **completion**.
* Extend the script to manage Ant, Maven and Gradle.

## alternatives

*[jdk_switcher](https://github.com/michaelklishin/jdk_switcher)
*[hickage/jenv](https://github.com/hikage/jenv)
*[linux-china/jenv](https://github.com/linux-china/jenv)