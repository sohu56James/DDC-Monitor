alert = registry.aliyuncs.com/hydsoft/alertmanager:latest

StartApp:
	@docker stack deploy --compose-file docker-compose.yml monitoring

alertmanager_build:
	@docker build -t $(alert) alertmanager --rm --no-cache
