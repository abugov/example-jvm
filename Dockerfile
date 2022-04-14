FROM ubuntu:20.04

RUN echo $(date +"%Y_%m_%d_%H_%M_%S") > /BUILD_DATE

RUN apt-get update -y && apt-get install -y zip git curl python3-dev python3-distutils

# bootstrap pants
# for M1 run pants with --no-watch-filesystem --no-pantsd
RUN git clone https://github.com/abugov/example-jvm.git && cd example-jvm && ./pants --version ::