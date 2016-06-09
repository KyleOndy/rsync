IMAGE=kyleondy/rsync
VERSION=0.10.

.PHONY: build
build:
	docker build -t $(IMAGE):$(VERSION) .

.PHONY: run
run:
	#docker run -it --rm $(IMAGE):$(VERSION)
	docker-compose build
	docker-compose up


.PHONY: test
test:
	./tests/run
