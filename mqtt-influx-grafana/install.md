helm repo add influxdata https://helm.influxdata.com/

## influxdb
https://github.com/influxdata/helm-charts/tree/master/charts/influxdb

helm upgrade --install influxdb influxdata/influxdb

## telegraf
helm upgrade --install telegraf influxdata/telegraf -f telegraf-values.yaml