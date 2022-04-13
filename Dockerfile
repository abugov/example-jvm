FROM python:3.9.6
#RUN echo $(date +"%Y_%m_%d_%H_%M_%S") > /builddate
ENV BUILD_DATE=$(date +"%Y_%m_%d_%H_%M_%S")
RUN bash -c "git clone https://github.com/abugov/example-jvm.git && cd example-jvm && ./pants --version ::"

# for M1 run pants with --no-watch-filesystem --no-pantsd