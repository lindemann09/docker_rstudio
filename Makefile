build:
	docker build --tag=my_rstudio .

run: build
	docker run -d -p 8787:8787 \
		--name my_rstudio_ct \
		-e PASSWORD=XXXX \
        -v $(shell pwd)/project:/home/rstudio/project \
		my_rstudio;

stop:
	docker stop my_rstudio_ct

start:
	docker start my_rstudio

remove: stop
	docker rm my_rstudio_ct

install_docker:
	sudo apt update -y && sudo apt upgrade -y ;\
	sudo apt install docker -y ;\
	sleep 3 ;\
	sudo gpasswd -a ${USER} docker ;\
	echo "PLEASE LOG OUT AND IN AGAIN."
