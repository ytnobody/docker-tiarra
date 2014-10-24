FROM ytnobody/ubuntu-jp:latest
MAINTAINER ytnobody <ytnobody@gmail.com>

ENV TIARRA_DOWNLOAD_URL http://www.clovery.jp/tiarra/archive/2010/02/tiarra-20100212.tar.gz
ENV TIARRA_VERSION 20100212
ENV TIARRA_ROOT /opt/tiarra

RUN cd /opt && \
    wget $TIARRA_DOWNLOAD_URL && \
    tar zxf tiarra-$TIARRA_VERSION.tar.gz
RUN ln -s /opt/tiarra-$TIARRA_VERSION $TIARRA_ROOT
RUN cp $TIARRA_ROOT/sample.conf $TIARRA_ROOT/tiarra.conf

EXPOSE 6667

ENTRYPOINT cd $TIARRA_ROOT && ./tiarra

