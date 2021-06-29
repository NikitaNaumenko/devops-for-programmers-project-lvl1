TAG := latest
prepare:
	cp -n .env.example .env || true
install:
	npm install


server:
	npx nodos server

setup: prepare install

test:
	npm -s test

docker-build:
	docker build . -f Dockerfile.production -t 'naumenkonikita/devops-for-programmers-project-lvl1:${TAG}'

docker-push:
	docker push  naumenkonikita/devops-for-programmers-project-lvl1:${TAG}
