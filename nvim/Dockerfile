FROM alpine:latest
COPY src ~/src
RUN apk add \
  git \
  nodejs \
  npm \
  neovim \
  ripgrep \
  build-base \
  curl \
  gcc \
  g++ \
  clang \
  ninja-build \
  ninja \
  gzip \
  bash \
  unzip \
  wget \
  --update
ENV PATH=~/.linuxbrew/bin:~/.linuxbrew/sbin:$PATH


