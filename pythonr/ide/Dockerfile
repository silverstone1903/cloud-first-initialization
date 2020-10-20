FROM silverstone1903/pythonr:latest


RUN echo "deb http://security.ubuntu.com/ubuntu xenial-security main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y libssl1.0.0 libssl-dev 
RUN apt-get install -y gdebi-core wget

RUN wget https://download2.rstudio.org/server/xenial/amd64/rstudio-server-1.3.1093-amd64.deb

RUN gdebi --n rstudio-server-1.3.1093-amd64.deb

RUN useradd -u 54917 rstudio

USER rstudio

EXPOSE 8787

CMD ["/usr/lib/rstudio-server/bin/rserver","--server-daemonize=0","--auth-none=1"]