.PHONY: test build

build:
	docker build -t testdemo .

test:
	docker run -v `pwd`:/testDemo testdemo
