VERSION:="1.0.0"

.PHONY: show-version
show-version:
	@echo "====== grafana/grafana ======" && dockertags --limit 5 grafana/grafana
	@echo "====== prom/prometheus ======" && dockertags --limit 5 prom/prometheus
	@echo "====== prom/node-exporter ======" && dockertags --limit 5 prom/node-exporter
	@echo "====== prom/blackbox-exporter ====== " && dockertags --limit 5 prom/blackbox-exporter

.PHONY: up
up:
	@docker-compose up -d

.PHONY: down
down:
	@docker-compose down

.PHONY: clean
clean:
	@docker-compose down --rm all
