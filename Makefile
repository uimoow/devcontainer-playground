up:
	docker compose -f .devcontainer/docker-compose.yml up -d
down:
	docker compose -f .devcontainer/docker-compose.yml down
build:
	docker compose -f .devcontainer/docker-compose.yml build
logs:
	docker compose -f .devcontainer/docker-compose.yml logs
ps:
	docker compose -f .devcontainer/docker-compose.yml ps
test:
	docker compose -f .devcontainer/docker-compose.yml exec -T app pytest /workspace/src --cache-clear