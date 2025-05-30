
APP_NAME=weatherapp

build:
	docker-compose build

up:
	docker-compose up

down:
	docker-compose down

logs:
	docker-compose logs -f

restart:
	docker-compose down && docker-compose up --build

ps:
	docker-compose ps

clean:
	docker-compose down --volumes --remove-orphans
