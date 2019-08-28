FROM debian:stretch
ADD https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb /wkhtmltox.deb
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install /wkhtmltox.deb && rm /wkhtmltox.deb
