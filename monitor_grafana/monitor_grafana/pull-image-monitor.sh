docker pull prom/node-exporter:v1.7.0
docker tag prom/node-exporter:v1.7.0 docker-registry.fss.com.vn/monitor/node-exporter
docker push docker-registry.fss.com.vn/monitor/node-exporter

docker pull kbudde/rabbitmq-exporter
docker tag kbudde/rabbitmq-exporter docker-registry.fss.com.vn/monitor/rabbitmq-exporter
docker push docker-registry.fss.com.vn/monitor/rabbitmq-exporter

docker pull bitnami/redis-exporter
docker tag bitnami/redis-exporter docker-registry.fss.com.vn/monitor/redis-exporter
docker push docker-registry.fss.com.vn/monitor/redis-exporter

docker pull wrouesnel/postgres_exporter
docker tag wrouesnel/postgres_exporter docker-registry.fss.com.vn/monitor/postgres-exporter
docker push docker-registry.fss.com.vn/monitor/postgres-exporter

docker pull prom/haproxy-exporter
docker tag prom/haproxy-exporter docker-registry.fss.com.vn/monitor/haproxy-exporter
docker push docker-registry.fss.com.vn/monitor/haproxy-exporter

docker pull google/cadvisor:v0.33.0
docker tag google/cadvisor:v0.33.0 docker-registry.fss.com.vn/monitor/cadvisor
docker push docker-registry.fss.com.vn/monitor/cadvisor

docker pull prom/blackbox-exporter:v0.24.0
docker tag prom/blackbox-exporter:v0.24.0 docker-registry.fss.com.vn/monitor/blackbox-exporter
docker push docker-registry.fss.com.vn/monitor/blackbox-exporter

docker pull grafana/grafana:10.2.0
docker tag grafana/grafana:10.2.0 docker-registry.fss.com.vn/monitor/grafana
docker push docker-registry.fss.com.vn/monitor/grafana

docker pull prom/prometheus:v2.47.0
docker tag prom/prometheus:v2.47.0 docker-registry.fss.com.vn/monitor/prometheus
docker push docker-registry.fss.com.vn/monitor/prometheus

docker pull prom/alertmanager:v0.23.0
docker tag prom/alertmanager:v2.47.0 docker-registry.fss.com.vn/monitor/alertmanager
docker push docker-registry.fss.com.vn/monitor/alertmanager