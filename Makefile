nodos-build:
	docker build . -t nodos_app

nodos-run:
	docker run -p 8080:8080 -it nodos_app

clean:
	docker system prune --volumes