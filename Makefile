up:
	docker compose up -d

down:
	docker compose down

rebuild:
	docker compose build --no-cache

restart:
	make down
	make up

reset-all:
	docker compose down --rmi all --volumes --remove-orphans