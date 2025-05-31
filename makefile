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

assets-rebuild:
	docker-compose exec node-cli npm rebuild node-sass --force

assets-dev:
	docker-compose exec node-cli npm run dev

assets-prod:
	docker-compose exec node-cli npm run build