FROM ubuntu
MAINTAINER Mike Tums <mktums@gmail.com>
RUN apt-get update -y && apt-get install --no-install-recommends -y -q \
    build-essential ruby python2.7 python2.7-dev python-pip git mercurial bzr \
    subversion curl libcurl4-gnutls-dev cvs fossil
RUN pip install https://github.com/mktums/brewchecker/releases/download/v0.2/brewchecker-0.2.1.tar.gz

ENTRYPOINT ["brewchecker"]
