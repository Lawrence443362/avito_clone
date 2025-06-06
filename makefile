start: 
	docker compose up --build -d

stop: 
	docker compose down

php-deps-install:
	docker compose exec composer install

php-generate-key:
	docker compose exec php-cli php artisan key:generate

migrate: 
	docker compose exec php-cli php artisan migrate

test:
	docker compose exec php-cli php artisan test

assets-install:
	docker-compose exec node-cli npm install

assets-build:
	docker-compose exec node-cli npm run build