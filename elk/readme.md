elasticsearch needs some file descriptor and default limit for alpine/k3s is 4096

to change this:
`echo 'rc_ulimit="-n 1048576"' >> /etc/rancher/k3s/k3s.env`
from: https://github.com/k3s-io/k3s/issues/3934

create secrets as described in:
https://github.com/elastic/helm-charts/tree/main/elasticsearch/examples/security

