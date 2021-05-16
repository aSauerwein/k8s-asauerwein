# nfs subpath provisioner
the nfs subpath provisioner will be used to dynamically create folders on a nfs share when a PV ressouce is rquested


## prerequisites
nfs utilities must be installed on the worker nodes
### debian/ubuntu
```
sudo apt-get install nfs-common
```
### alpine
```
apk add nfs-utils
rc-update add nfs
rc-service nfs start
```

## installation
```
helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
kubectl create namespace nfs
helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=10.255.100.100 \
    --set nfs.path=/volume1/server \
    -n nfs
```