build:
	docker build -t futtetennista/hakyll:futtetennismo-0.1.0 .
	docker build -t futtetennista/hakyll .

push: build
	docker login
	docker push futtetennista/hakyll
