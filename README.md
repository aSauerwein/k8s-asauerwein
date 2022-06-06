# k8s-asauerwein

## alpine linux install
* netboot.xyz
* login as root without password
* setup alpine
* disk mode "sys"
* reboot
* setup ssh /etc/sshd_config
* install curl `apk add curl`
* activate cgroups `rc-update add cgroups default`
* write /etc/rancher/k3s/config.yaml
```
disable:
  - servicelb
  - local-storage
```
* install k3s `curl -sfL https://get.k3s.io | sh -`

* copy /etc/rancher/k3s/k3s.yaml to your local pc to access k3s

## troubleshooting
corrupt k3s db -> recover with sqlite tools
https://stackoverflow.com/questions/18259692/how-to-recover-a-corrupt-sqlite3-database/57872238#57872238
```
https://stackoverflow.com/questions/18259692/how-to-recover-a-corrupt-sqlite3-database/57872238#57872238
mv /var/lib/rancher/k3s/server/db/state.db .
mv /tmp/state.db /var/lib/rancher/k3s/server/db/state.db
```