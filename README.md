# k8s pgbouncer
deploy pgbouncer in k8s gke

### push dokcer images pgbouncer to container registry
```
docker build --no-cache -t prod-pgbouncer .
docker tag prod-pgbouncer asia.gcr.io/name-project/prod-pgbouncer:v1
docker push asia.gcr.io/name-project/prod-pgbouncer:v1
```

### deploy pgbouncer to k8s gke
```
kubectl apply -f deployment-staging-pgbouncer.yaml
```
