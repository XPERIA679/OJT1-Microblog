BASE_DIR := $(shell pwd)

build:
	docker-compose up -d --build

setup-permissions:
	sudo chmod -R 777 $(BASE_DIR)/src
	docker-compose exec php chmod -R 777 /var/www/html/storage/logs
	docker-compose exec php chown -R www-data:www-data /var/www/html/storage/logs

copy-env:
	cp $(BASE_DIR)/.env $(BASE_DIR)/src/.env

laravel-project:
	docker-compose exec php composer create-project laravel/laravel /var/www/html/

migrate:
	docker-compose exec php php /var/www/html/artisan migrate

down-up:
	docker-compose down && docker-compose up -d --build
	