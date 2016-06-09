IMAGE=kyleondy/rsync
VERSION=0.10.

.PHONY: build
build:
	docker build -t $(IMAGE):$(VERSION) image/

.PHONY: run
run: build
	#docker run -it --rm $(IMAGE):$(VERSION)
	docker-compose up


.PHONY: test
test:
	./tests/run
