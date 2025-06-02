start: 
	docker compose up --build -d

stop: 
	docker compose down

migrate: 
	docker compose exec php-cli php artisan migrate

test:
	docker compose exec php-cli php artisan test

assets-install:
	docker-compose exec node-cli npm install

assets-build:
	docker-compose exec node-cli npm run build