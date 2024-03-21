BASE_DIR := $(shell pwd)

build:
	docker-compose up -d --build

permissions:
	sudo chmod -R 777 $(BASE_DIR)/src
	docker-compose exec php chmod -R 777 /var/www/html
	docker-compose exec php chmod -R 777 /var/www/html/storage/logs
	docker-compose exec php chown -R www-data:www-data /var/www/html/storage/logs

laravel-project:
	docker-compose exec php composer create-project laravel/laravel /var/www/html/

migrate:
	docker-compose exec php php /var/www/html/artisan migrate

vendor:
	docker-compose exec -w /var/www/html php composer install

down-up:
	docker-compose down && docker-compose up -d --build

up:
	docker-compose up -d

refresh:
	docker-compose down && docker-compose up -d
