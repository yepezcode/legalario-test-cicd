REGISTRY=legalario:latest 396608811323.dkr.ecr.us-east-1.amazonaws.com/legalario
CONTAINER_NAME=nginx-test
VERSION=0.1

all:
	docker build -t ${CONTAINER_NAME}:${VERSION} .

docker-run:
	docker run -d -p 8081:80 ${CONTAINER_NAME}:${VERSION}

docker-tag:
	docker tag ${CONTAINER_NAME}:${VERSION} ${REGISTRY}:${CONTAINER_NAME}-v${VERSION}
