FROM ubuntu:20.04

ENV BUILD_DATE="$(date +'%Y_%m_%d_%H_%M_%S')"

RUN apt-get update -y && apt-get install -y git curl python3-dev python3-distutils

# for M1 run pants with --no-watch-filesystem --no-pantsd
RUN git clone https://github.com/abugov/example-jvm.git && cd example-jvm && ./pants --version ::

