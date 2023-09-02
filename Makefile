container:
	@echo ${CR_PAT} | docker login ghcr.io -u zollo --password-stdin
	docker build .  -t ghcr.io/zollo/ansible:latest
	docker push ghcr.io/zollo/ansible:latest
