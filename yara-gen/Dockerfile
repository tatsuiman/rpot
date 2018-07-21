FROM ubuntu:bionic

RUN apt-get update && \
    apt-get -y --no-install-recommends install \
    git vim python python-dev python-pip python-setuptools \
    ca-certificates curl make gcc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Neo23x0/yarGen /yarGen
WORKDIR /yarGen
RUN pip install wheel
RUN pip install scandir lxml naiveBayesClassifier pefile
RUN python yarGen.py --update
COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
