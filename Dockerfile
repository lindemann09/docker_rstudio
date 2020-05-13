FROM  rocker/tidyverse:3.6.3

EXPOSE 8787

RUN apt-get update -y && \
	apt-get install -y \ 
		curl \
		jags \
		zsh \
		awscli \
		python3-pip \
	&& python3 -m pip install ipython pandas scipy \
	&&  R -e "install.packages(c('BayesFactor', 'afex', 'readxl', 'rjags'))"
