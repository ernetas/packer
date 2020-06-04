.PHONY: up

up:
	docker build --pull -t ernestas/packer:$$(date +%Y%m%d) .
	docker tag ernestas/packer:$$(date +%Y%m%d) ernestas/packer:latest
	docker push ernestas/packer:$$(date +%Y%m%d)
	docker push ernestas/packer:latest
