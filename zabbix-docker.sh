#start mysql server instance
docker run --name mysql-server -t \
  -e MYSQL_DATABASE="zabbix" \
  -e MYSQL_USER="zabbix" \
  -e MYSQL_PASSWORD="ddrafz1234" \
  -e MYSQL_ROOT_PASSWORD="ddrafz1234" \
  -d mysql --character-set-server=utf8 \
  --collation-server=utf8_bin \
  --default-authentication-plugin=mysql_native_password

#start zabbix Java gateway instance
docker run --name zabbix-java-gateway \
  -t --restart unless-stopped \
  -d zabbix/zabbix-java-gateway

#start zabbix server
docker run --name zabbix-server-mysql \
  -t -e DB_SERVER_HOST="mysql-server" \
  -e MYSQL_DATABASE="zabbix" -e MYSQL_USER="zabbix" \
  -e MYSQL_PASSWORD="ddrafz1234" \
  -e MYSQL_ROOT_PASSWORD="ddrafz1234" \
  -e ZBX_JAVAGATEWAY="zabbix-java-gateway" \
  --link mysql-server:mysql \
  --link zabbix-java-gateway:zabbix-java-gateway \
  -p 10051:10051 --restart unless-stopped \
  -d zabbix/zabbix-server-mysql

#start zabbix web interface
docker run --name zabbix-web-nginx-mysql \
  -t -e DB_SERVER_HOST="mysql-server" \
  -e MYSQL_DATABASE="zabbix" \
  -e MYSQL_USER="zabbix" \
  -e MYSQL_PASSWORD="ddrafz1234" \
  -e MYSQL_ROOT_PASSWORD="ddrafz1234" \
  --link mysql-server:mysql \
  --link zabbix-server-mysql:zabbix-server \
  -p 80:8080 --restart unless-stopped \
  -d zabbix/zabbix-web-nginx-mysql

#start zabbix agent
docker run --name zabbix-agent --link mysql-server:mysql \
  --link zabbix-server-mysql:zabbix-server \
  -e ZBX_HOSTNAME="Zabbix server" \
  -e ZBX_SERVER_HOST="zabbix-server" \
  -d zabbix/zabbix-agent
