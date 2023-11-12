FROM pandoc/latex:latest-ubuntu

RUN apt update && apt-get update

# Install Chinese front
RUN apt-get install -y ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming && fc-cache -f -v

# Install package for convert html to pdf
RUN DEBIAN_FRONTEND=noninteractive TZ="Etc/UTC" apt-get install -y tzdata wkhtmltopdf
