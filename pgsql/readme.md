```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install postgresql bitnami/postgresql
```

exec into pod
start psql
```
psql -U postgres
--- enter password from secret
```

create powerdns database and user
```
# creates a new user
CREATE USER ns001 WITH PASSWORD '12345ABCDEF4242';
CREATE DATABASE ns001;
GRANT ALL PRIVILEGES ON database ns001 to ns001;
\c ns001
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO ns001;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO ns001;
```
* download and execute schema
https://doc.powerdns.com/authoritative/backends/generic-postgresql.html
```
curl https://raw.githubusercontent.com/PowerDNS/pdns/rel/auth-4.3.x/modules/gpgsqlbackend/schema.pgsql.sql -o schema.sql
psql ns001 -U postgres -f schema.sql

```

* go to pdns-admin url
* create account
* specify pdns api, api key and version
url: http://ns001-http.powerdns.svc.cluster.local
api-key: from ns001 configmap
version: 4.3.1