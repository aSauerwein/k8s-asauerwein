get the latest release of fleet at:
https://github.com/rancher/fleet/releases

* install fleet crd
```
helm -n fleet-system install --create-namespace --wait \
    fleet-crd https://github.com/rancher/fleet/releases/download/v0.8.0/fleet-crd-0.8.0.tgz
```

* install fleet controller
```
helm -n fleet-system install --create-namespace --wait \
    fleet https://github.com/rancher/fleet/releases/download/v0.8.0/fleet-0.8.0.tgz
```

* register git repo
https://fleet.rancher.io/gitrepo-add/
https://fleet.rancher.io/gitrepo-structure/
