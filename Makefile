.EXPORT_ALL_VARIABLES:
HAKYLL_VERSION = 4.12.5.1

build-image:
	set +o pipefail
	docker build -t futtetennista/hakyll:$$HAKYLL_VERSION .

build-image-ext:
	set +o pipefail
	docker build -t futtetennista/hakyll-ext:$$HAKYLL_VERSION .

push: build
	docker login
	docker push futtetennista/hakyll-ext
