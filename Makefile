all:

init:
# docker pull yandex/clickhouse-server
# https://clickhouse.tech/#quick-start

# https://github.com/ClickHouse/clickhouse-go
	go get -x github.com/ClickHouse/clickhouse-go

	curl -LOR https://clickhouse.tech/docs/en/single/clickhouse_en.pdf

	sudo apt-get install -y apt-transport-https ca-certificates dirmngr
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E0C56BD4

	echo "deb https://repo.clickhouse.tech/deb/stable/ main/" | sudo tee /etc/apt/sources.list.d/clickhouse.list
	sudo apt-get update

	sudo apt-get install -y clickhouse-server clickhouse-client

	sudo service clickhouse-server start

	clickhouse-client
	exit
	

