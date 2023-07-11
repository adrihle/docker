FROM ubuntu
COPY src /src
RUN apt-get update && apt-get install -y git curl binutils clang make ruby
ENV PATH=~/.linuxbrew/bin:~/.linuxbrew/sbin:$PATH

RUN ["chmod", "+x", "/src/init.sh"]
