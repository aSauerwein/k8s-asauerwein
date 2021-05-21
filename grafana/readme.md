## grafana
helm repo add grafana https://grafana.github.io/helm-charts
helm upgrade --install grafana grafana/grafana -f grafana-values.yaml