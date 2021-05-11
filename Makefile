clean:
	docker system prune --volumes

compose-build:
	docker-compose --file docker-compose.override.yml build

docker-build-prod:
	docker build . -t irkin42/nodos_app

up:
	docker-compose up --abort-on-container-exit

test-remote-image:
	docker run -e NODOS_HOST=0.0.0.0 -p 8080:8080 irkin42/nodos_app