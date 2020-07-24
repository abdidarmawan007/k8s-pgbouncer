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


## Test pgbench for 60 second, 100 client, select only
## CLoud SQL Postgresql 4 Core 6GB RAM
```
pgbench -h abdi-pgbouncer -c 100 -T 60 -S -n -U postgres postgres
```
```
scaling factor: 1
query mode: simple
number of clients: 100
number of threads: 1
duration: 60 s
number of transactions actually processed: 1946478
latency average = 3.083 ms
tps = 32435.484858 (including connections establishing)
tps = 32436.291864 (excluding connections establishing)
```
