# kubenetes in ubuntu 16.10
master file is apiserver kube-controller-manager kube-scheduller service file and config file
slave file is kubelet and kube-proxy service file, and config file

mainly I talk about the experiment environment with docker not with minikube
1. go to etcd file and then read README.md in etcd file and execute
2. go to master/master_docker, read README.md and execute
3. go to slave , read README.md and then go to slave_docker then execute
4. use kubectl command to check the cluster health
   # kubectl -s http://192.168.1.88:8080 get nodes
