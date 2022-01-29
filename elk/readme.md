elasticsearch needs some file descriptor and default limit for alpine/k3s is 4096

to change this:
`echo 'rc_ulimit="-n 1048576"' >> /etc/rancher/k3s/k3s.env`
from: https://github.com/k3s-io/k3s/issues/3934

create secrets as described in:
https://github.com/elastic/helm-charts/tree/main/elasticsearch/examples/security


curl -XPUT 'localhost:9200/_settings' -H "Content-Type: application/json" -d '
    {
        "index" : {
            "number_of_replicas" : 0
        }
    }'

curl http://127.0.0.1:9200/_cat/indices?v

note to myself 29.01.2022
basic security on kubernetes is unneccesarry difficult

k create secret generic elastic-credentials --from-literal username=kibana_system --from-literal password=m9ku7moWO8NJZCZOIB4g