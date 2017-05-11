#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $DIR

mkdir -p /opt/mahongchao/k8s/bin
mkdir -p /opt/mahongchao/k8s/run/docker-images
mkdir -p /opt/mahongchao/k8s/run/slave_cert
mkdir -p /root/k8s_service

cp $DIR/bin/kubectl /opt/mahongchao/k8s/bin
cp $DIR/bin/kube-apiserver /opt/mahongchao/k8s/bin
cp $DIR/bin/kube-controller-manager /opt/mahongchao/k8s/bin
cp $DIR/bin/kube-scheduler /opt/mahongchao/k8s/bin
cp $DIR/bin/etcdctl /opt/mahongchao/k8s/bin

BASH_ROOT_FILE=/root/.bashrc
cat $BASH_ROOT_FILE | grep '/opt/mahongchao/k8s/bin' 1>/dev/null 2>/dev/null
if [ $? != 0 ];then
    echo 'export PATH=$PATH:/opt/mahongchao/k8s/bin' >> $BASH_ROOT_FILE
fi



