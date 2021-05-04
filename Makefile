TAG := latest
server:
	npx nodos server

test:
	npm -s test

docker-build:
	docker build . -f Dockerfile.production -t 'naumenkonikita/devops-for-programmers-project-lvl1:${TAG}'

docker-push:
	docker push  naumenkonikita/devops-for-programmers-project-lvl1:${TAG}
