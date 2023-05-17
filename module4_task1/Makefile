DOCKER_IMAGE = awesome:build

build-docker:
	docker build -t $(DOCKER_IMAGE) .build

build: build-docker
	docker run --rm -v $(PWD):/go/src/app -w /go/src/app $(DOCKER_IMAGE) make go-build

go-build:
	go build -o $(TARGET)

run: build
	docker run --rm -v $(PWD):/go/src/app -w /go/src/app $(DOCKER_IMAGE) ./$(TARGET) >./$(TARGET).log 2>&1 &
