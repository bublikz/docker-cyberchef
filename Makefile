# vim:ft=make:

.PHONY : all

all: build

build:
	docker build -t cyberchef:latest .

clean:
	docker rmi cyberchef:latest

start:
	docker run -d --rm -p 8000:8000 --name cyberchef cyberchef:latest

stop:
	docker rm -f cyberchef

