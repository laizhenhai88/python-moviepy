################################################### from python:3.6.6-slim-jessie ###################################################
From python:3.6.6-slim-jessie

################################################### image video ###################################################

ENV PATH /usr/local/bin:$PATH
ENV LANG C.UTF-8

RUN apt-get update \
	&& apt-get install -y imagemagick \
	&& pip3 install pillow \
	&& pip3 install requests \
	&& pip3 install moviepy \
	&& python3 -c 'from moviepy.editor import *' \
	&& rm -rf /var/lib/apt/lists/*

COPY policy.xml /etc/ImageMagick-6/policy.xml
