FROM gcc:8

ARG CHM_LIB_DIR=chmlib-0.40

RUN apt-get -q update && apt-get install -y -q unzip && \
    curl -LO http://www.jedrea.com/chmlib/${CHM_LIB_DIR}.tar.gz && \
    tar -zxf ${CHM_LIB_DIR}.tar.gz

WORKDIR ${CHM_LIB_DIR}
RUN ./configure && make && make install

CMD [ "/bin/bash" ]

# FROM debian:buster-slim
# WORKDIR /home
# VOLUME /home/chms

# WORKDIR /home/${CHM_LIB_DIR}
# COPY extract-all-the-chms.sh .

# CMD chmod +x extract-all-the-chms.sh; ./extract-all-the-chms.sh
