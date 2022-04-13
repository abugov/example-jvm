FROM python:3.9.6
RUN bash -c "git clone https://github.com/abugov/example-jvm.git && cd example-jvm && ./pants --version :: || echo OK!"

# for M1 run pants with --no-watch-filesystem --no-pantsd