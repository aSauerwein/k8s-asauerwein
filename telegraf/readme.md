helm repo add influxdata https://helm.influxdata.com/

## telegraf
helm upgrade --install telegraf influxdata/telegraf -f telegraf-values.yaml
