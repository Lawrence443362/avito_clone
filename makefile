start: 
	docker compose up --build -d
stop: 
	docker compose down
migrate: 
	docker compose exec php-cli php artisan migrate