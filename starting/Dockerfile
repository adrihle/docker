FROM debian
COPY src /src
RUN apt-get update && apt-get install -y git curl binutils clang make
ENV PATH=~/.linuxbrew/bin:~/.linuxbrew/sbin:$PATH

RUN ["chmod", "+x", "/src/init.sh"]
