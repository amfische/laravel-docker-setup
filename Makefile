up:
	docker-compose up -d

down:
	docker-compose down

restart: down up

build:
	docker-compose build

composer:
	docker-compose exec -it app composer install

terminal:
	docker-compose exec app bash

tinker:
	docker-compose exec app php artisan tinker

dbcreate:
	docker-compose exec db mysql -uroot -ptest -e "CREATE DATABASE app CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

logs:
	docker-compose logs --tail 10 --follow

xdebug-log:
	docker-compose exec app tail -n 25 /var/log/xdebug.log

phpunit:
	docker-compose exec app vendor/bin/phpunit tests/Feature/SchedulerTests.php