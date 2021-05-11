clean:
	docker system prune --volumes

compose-build:
	docker-compose build

up:
	docker-compose up --abort-on-container-exit
