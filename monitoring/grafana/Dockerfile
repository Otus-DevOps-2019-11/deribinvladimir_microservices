FROM grafana/grafana:5.0.0
COPY dashboards/otusproviders.yml /etc/grafana/provisioning/dashboards/
COPY datasources/prometheus.yml /etc/grafana/provisioning/datasources/
COPY dashboards/*.json /var/lib/grafana/dashboards/
