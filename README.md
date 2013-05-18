# jdk-manager

A very simple bash script to manage **multiple** `jdks` installation.

## Installation

`$ clone git://github.com/tarrsalah/jdk-manager.git ~/.jdk-manager`
`$ echo ". ~/.jdk-manager/jdk-manager.bash" >> ~/.bash_profile`

## Customization

In `jdk-manager.bash`, set the variable `JDK_ROOT` to the directoty where all the jdk's are stored.
By default, `jdk-manager` assume that you store all the downloaded jdks in `~/local`.

## Usage

* to list all the jdk's installed:
`$ jdk`


![list jdks](https://raw.github.com/tarrsalah/jdk-manager/master/img/jdk.png)

* to pick a jdk:
`$ jdk ${complete-jdk-version}`


## TODO

* Add automatic **completion**.
* Extend the script to manage Ant, Maven and Gradle.

## Alternatives

* [jdk_switcher](https://github.com/michaelklishin/jdk_switcher)

* [hickage/jenv](https://github.com/hikage/jenv)

* [linux-china/jenv](https://github.com/linux-china/jenv)
