FROM ubuntu:20.04

RUN apt update && apt install -y \
    nmap

ENV SCAN_NET=192.168.0.0/21
ENV OUTFILE=/opt/scan.xml

CMD watch -n 60 nmap -v -sP ${SCAN_NET} -oX ${OUTFILE}
