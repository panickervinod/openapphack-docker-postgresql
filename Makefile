all: build

build:
	@docker build --tag=openapphack/postgresql .

release: build
	@docker build --tag=openapphack/postgresql:$(shell cat VERSION) .
