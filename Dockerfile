# kurento-media-server #
# VERSION               6.6.0

FROM ubuntu:14.04
RUN sudo apt-get update
RUN sudo apt-get install -y wget
RUN echo "deb http://ubuntu.kurento.org trusty kms6" | sudo tee /etc/apt/sources.list.d/kurento.list
RUN wget -O - http://ubuntu.kurento.org/kurento.gpg.key | sudo apt-key add -
RUN sudo apt-get update
RUN sudo apt-get install -y kurento-media-server-6.0
CMD sudo service kurento-media-server-6.0 start && touch toto && tail -f toto
