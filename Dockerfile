FROM debian:buster-slim
WORKDIR /home
VOLUME /home/chms

RUN apt-get -q update && apt-get install -y -q unzip libchm1 libchm-bin
# WORKDIR /home/${CHM_LIB_DIR}

COPY extract-all-the-chms.sh .
CMD chmod +x extract-all-the-chms.sh; bash extract-all-the-chms.sh
