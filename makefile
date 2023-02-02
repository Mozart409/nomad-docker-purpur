name=mozart409/fabric-server-mozart409

clear:
	clear

build: clear 
	@echo " "
	@echo "Building..."
	@echo " "
	docker build -t ${name} .

run: clear
	@echo " "
	@echo "Executing..."
	@echo " "
	docker run --rm -d mozart409/fabric-server-mozart409:latest

exec: clear
	docker run --rm -it -p 25565:25565/tcp -p 25575:25575/tcp mozart409/fabric-server-mozart409:latest /bin/bash