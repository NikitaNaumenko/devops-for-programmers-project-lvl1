TAG := latest

prepare:
	cp -n .env.example .env

install:
	docker-compose run app npm install

server:
	npx nodos server

setup: prepare install

compose:
	docker-compose up

test: prepare
	npm -s test

ci-test: prepare
	docker-compose --file docker-compose.yml up --abort-on-container-exit

docker-build:
	docker build . -f Dockerfile.production -t 'naumenkonikita/devops-for-programmers-project-lvl1:${TAG}'

docker-push:
	docker push  naumenkonikita/devops-for-programmers-project-lvl1:${TAG}
