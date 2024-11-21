include .env

install:
	@$(MAKE) -s down
	@$(MAKE) -s docker-build
	@$(MAKE) -s up
	@$(MAKE) -s composer-install

ps:
	@docker compose ps

up:
	@docker compose up -d

down:
	@docker compose down --remove-orphans

restart: down up

docker-logs:
	@docker compose logs -f

php-run:
	@docker exec -it ${APP_NAME}-php $(cmd)

composer-install:
	$(MAKE) php-run cmd="composer install"