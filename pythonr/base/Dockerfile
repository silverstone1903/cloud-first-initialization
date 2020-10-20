# https://stackoverflow.com/questions/54437030/how-can-i-create-a-docker-image-to-run-both-python-and-r
# https://stackoverflow.com/a/54437196
# FROM silverstone1903/covid19-datatable:1.1
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y  build-essential r-base r-base-dev python3.6 python3-pip python3-setuptools python3-dev nano libcurl4-openssl-dev libssl-dev libxml2-dev pandoc git

COPY . ./
# WORKDIR /app

RUN pip3 install -r requirements.txt
RUN Rscript /app/rpackages_installer.R

CMD ["/bin/bash"]
