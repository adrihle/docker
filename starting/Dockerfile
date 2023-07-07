# FROM ubuntu:latest

# RUN apt-get update && \
#     apt-get install -y -q --allow-unauthenticated \
#     git \
#     sudo
#
# COPY init.sh /
#
# RUN useradd -m -s /bin/zsh linuxbrew && \
#     usermod -aG sudo linuxbrew &&  \
#     mkdir -p /home/linuxbrew/.linuxbrew && \
#     chown -R linuxbrew: /home/linuxbrew/.linuxbrew
#
# USER linuxbrew
#
# RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
#
# USER root
# RUN chown -R init: /home/linuxbrew/.linuxbrew
#
# CMD ["/init.sh"]
FROM debian
COPY init.sh /
RUN apt-get update && apt-get install -y git curl binutils clang make
# RUN git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew \
# && mkdir ~/.linuxbrew/bin \
# && ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin \
# && eval $(~/.linuxbrew/bin/brew shellenv) \
# && brew --version
ENV PATH=~/.linuxbrew/bin:~/.linuxbrew/sbin:$PATH

RUN ["chmod", "+x", "/init.sh"]
