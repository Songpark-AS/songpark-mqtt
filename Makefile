all: build push

aws-pw: 
	aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 523581807964.dkr.ecr.eu-central-1.amazonaws.com

build:
	docker build -t songpark .

tag: build aws-pw
	docker tag songpark:latest 523581807964.dkr.ecr.eu-central-1.amazonaws.com/songpark-mqtt:latest

push: tag
	docker push 523581807964.dkr.ecr.eu-central-1.amazonaws.com/songpark-mqtt:latest
