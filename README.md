# jdk-manager

A very simple bash script to manage **multiple** Java Developement Kits (`jdks`) installations.

## Installation

`$ git clone git://github.com/tarrsalah/jdk-manager.git`

`$ cd jdk-manager && ./install.bash`

This will create a `.jdk-manager` directory in your home, and add a line to `.bash_profile` file.

Open a new Terminal session (make sure that your terminal source .bash_profile).

## Customization

In `jdk-manager.bash`, set the variable `JDK_ROOT` to the directoty where all the jdk's are stored.

By default, `jdk-manager` assume that you store all the downloaded jdks in `~/local`.

## Usage

* to list all the jdks installed: `$ jdk`

* to pick a jdk: `$ jdk ${complete-jdk-version}`


![list jdks](https://raw.github.com/tarrsalah/jdk-manager/master/img/jdk.gif)




## TODO

* Add automatic **completion**.
* Extend the script to manage Ant, Maven and Gradle.

## Alternatives

* [jdk_switcher](https://github.com/michaelklishin/jdk_switcher)

* [hickage/jenv](https://github.com/hikage/jenv)

* [linux-china/jenv](https://github.com/linux-china/jenv)
