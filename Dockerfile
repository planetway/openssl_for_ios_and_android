FROM bitriseio/android-ndk:latest

COPY tools /app/tools
WORKDIR /app/tools

RUN ./build-openssl4android.sh && find . -maxdepth 1 | grep -v "\.sh$" | grep -v "^\.$" | xargs rm -rf
RUN ./build-curl4android.sh    && find . -maxdepth 1 | grep -v "\.sh$" | grep -v "^\.$" | xargs rm -rf
