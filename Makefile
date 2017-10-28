build:
	ifndef VERSION
	  $(error Please define a VERSION)
	endif
	set +o pipefail
	docker load -i ./.caches/docker-hakyll.tar | true
	docker build --cache-from=futtetennista/hakyll -t futtetennista/hakyll:futtetennismo-$(VERSION) .
	mkdir -p ./.caches
	docker save -o ./.caches/docker-hakyll.tar futtetennista/hakyll

push: build
	docker login
	docker push futtetennista/hakyll
