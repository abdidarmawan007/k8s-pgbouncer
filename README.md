# k8s pgbouncer
deploy pgbouncer in k8s gke with configmap for list user and endpoint database

### push dokcer images pgbouncer to container registry
```
docker build --no-cache -t zeus-pgbouncer .
docker tag zeus-pgbouncer asia.gcr.io/zeus-007/zeus-pgbouncer:v1
docker push asia.gcr.io/zeus-007/zeus-pgbouncer:v1
```

### deploy pgbouncer to k8s gke
```
kubectl apply -f configmap-staging-pgbouncher.yaml
```
```
kubectl apply -f deployment-staging-pgbouncer.yaml
```
