# 初始化 docker swarm
init-swarm:
	docker swarm init

# 啟動 所有的service
deploy-all:
	docker stack deploy -c docker-compose.yml allservice

deploy-portainer:
	docker stack deploy -c portainer.yml por

# 建立 network
create-network:
	docker network create --driver=overlay my_network

# 啟動 rabbitmq
deploy-mysql:
	docker stack deploy -c mysql.yml mysql

# sent taiwan-stock-price task
sent-taiwan-stock-price-task:
	pipenv run python financialdata/producer.py taiwan_stock_price 2021-04-01 2021-04-30

# sent taiwan-futures-daily task
sent-taiwan-futures-daily-task:
	pipenv run python financialdata/producer.py taiwan_futures_daily 2021-04-01 2021-04-30

# 建立 dev 環境變數
gen-dev-env-variable:
	python genenv.py

# 建立 staging 環境變數
gen-staging-env-variable:
	VERSION=STAGING python genenv.py

# 建立 release 環境變數
gen-release-env-variable:
	VERSION=RELEASE python genenv.py