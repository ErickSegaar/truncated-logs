# truncated-logs
code used in article truncated logs.

original
``` docker
docker build -t logbuild .
docker run logbuild
```

fixed local
``` docker
docker build -t logbuild .
docker run -v ${pwd}:/logme logbuild
```

fixed aci
``` powershell
az container create \
    --resourcegroup my-containers \
    --name logbuild \
    --image mycontainers.azurecr.io/logbuild \
    --azure-file-volume-account-name $ACI_PERS_STORAGE_ACCOUNT_NAME \
    --azure-file-volume-account-key $STORAGE_KEY \
    --azure-file-volume-share-name $ACI_PERS_SHARE_NAME \
    --azure-file-volume-mount-path /logme/
```
