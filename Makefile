up:
	docker-compose up -d --build

down:
	docker-compose down

rebuild:
	docker-compose down
	docker-compose up -d --build

bash:
	docker-compose exec django bash
