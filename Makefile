EXEC_OPTS ?= -T

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
	docker compose -f .devcontainer/docker-compose.yml exec $(EXEC_OPTS) --user root app pytest /workspace/src
lint:
	docker compose -f .devcontainer/docker-compose.yml run --rm --user root app flake8 /workspace/src
