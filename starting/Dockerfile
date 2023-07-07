FROM debian
COPY init.sh /
RUN apt-get update && apt-get install -y git curl binutils clang make
ENV PATH=~/.linuxbrew/bin:~/.linuxbrew/sbin:$PATH

RUN ["chmod", "+x", "/init.sh"]
