FROM python:3.9.6
RUN bash -c "git clone https://github.com/abugov/example-jvm.git && cd example-jvm && ./pants --no-watch-filesystem --no-pantsd install :: || echo OK!"