IMAGE_NAME=neo4j

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -p 7474:7474 -d $(IMAGE_NAME)
