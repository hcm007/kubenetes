1. please change ip address in etcd 0 and etcd1
2 all of etcd servers runs in docker 
3. just run ./etcd0 in master
4. run ./etcd1 in slave
5  docker exec -it containerID(etcd0) sh
   #etcdctl cluster-health
member 19560f03274b28e8 is healthy: got healthy result from http://192.168.1.88:2379
member 6ea4362f8a73f8bc is healthy: got healthy result from http://192.168.1.99:2379
cluster is healthy
6  also in container run 
   #etcdctl set /message hello
7  in etcd1 container
   #etcdctl get /message
   hello
9. etcd cluster in containers succeed
