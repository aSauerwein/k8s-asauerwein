helm install -n unifi mongodb bitnami/mongodb -f mongodb-values.yaml


k exec -it ..
mongosh admin --authenticationDatabase admin -u root -p wy6PD9pgjS
use admin
db.createUser({
  user: "unifi",
  pwd: "qF24f4tQQEQsWxJDAafkkKHpQ",
  roles: [
    { db: "unifi", role: "dbOwner" },
    { db: "unifi_stat", role: "dbOwner" }
  ]
})