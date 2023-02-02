name=mozart409/fabric-server-mozart409

clear:
	clear

build: clear 
	@echo " "
	@echo "Building..."
	@echo " "
	docker build -t ${name} .

up: clear
	docker compose up --build --remove-orphans

mods: clear
	./mods.sh