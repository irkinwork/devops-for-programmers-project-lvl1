server:
	npx nodos server

test:
	docker run irkin42/nodos_app npx jest

lint:
	docker run irkin42/nodos_app npx eslint . --fix

clean:
	docker-compose down -v --remove-orphans

compose-build:
	docker-compose build

docker-build-prod:
	docker build . -f Dockerfile.production -t irkin42/nodos_app:latest

up:
	docker-compose up --abort-on-container-exit

test-remote-image:
	docker run -e NODOS_HOST=0.0.0.0 -p 8080:8080 irkin42/nodos_app

update-image:
	docker push irkin42/nodos_app

bash:
	docker-compose run app bash

submit:
	git add . && git ci --amend -m "fix hexlet-check" && git push -u origin HEAD -f
