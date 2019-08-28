FROM debian:stretch
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install curl && \
  curl -o /wkhtmltox.deb https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb && \
  DEBIAN_FRONTEND=noninteractive apt-get -y purge curl && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install /wkhtmltox.deb && \
  rm /wkhtmltox.deb && \
  apt-get clean && rm -rf /var/cache/apt/archives/* && \
  rm -rf /var/lib/apt/lists/*
