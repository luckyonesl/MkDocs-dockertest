FROM debian
#https://www.mkdocs.org/getting-started/#installationa

RUN apt-get update
#RUN apt install -y python3-pip
RUN apt install -y python-pip
RUN pip install mkdocs

WORKDIR /docs
EXPOSE 8000
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
