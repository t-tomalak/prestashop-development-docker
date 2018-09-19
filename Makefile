init_all: remove_prest_all stop_docker copy_env start_docker_detached init_prest_all

copy_env:
	@cp -n .env.tmpl .env

force_copy_env:
	@cp .env.tmpl .env

start_docker:
	docker-compose up

stop_docker:
	docker-compose down || true

start_docker_detached:
	docker-compose up -d && sleep 10

init_prest_all: copy_env init_prest16 init_prest17

init_prest16:
	docker-compose exec php bash -c "./scripts/install_prest16.sh"

init_prest17:
	docker-compose exec php bash -c "./scripts/install_prest17.sh"

remove_prest_all:
	sudo ./scripts/uninstall_all.sh || true

append_hosts:
	sudo ./scripts/append_host.sh

