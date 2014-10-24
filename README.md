# ytnobody/docker-tiarra

A container that contains [Tiarra](http://www.clovery.jp/tiarra/) (pure-perl irc proxy)

## How to use your own tiarra.conf

Create your original docker image that based ytnobody/docker-tiarra:latest

Example.

    FROM ytnobody/docker-tiarra:latest
    MAINTAINER ytnobody <ytnobody@gmail.com>

    ADD tiarra.conf /opt/tiarra/

Then, docker run it.

## Exposed port

* 6667/tcp

