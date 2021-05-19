get the latest release of fleet at:
https://github.com/rancher/fleet/releases

* install fleet crd
```
helm -n fleet-system install --create-namespace --wait \
    fleet-crd https://github.com/rancher/fleet/releases/download/v0.3.5/fleet-crd-0.3.5.tgz
```

* install fleet controller
```
helm -n fleet-system install --create-namespace --wait \
    fleet https://github.com/rancher/fleet/releases/download/v0.3.5/fleet-0.3.5.tgzk 
```

* register git repo
https://fleet.rancher.io/gitrepo-add/
https://fleet.rancher.io/gitrepo-structure/
