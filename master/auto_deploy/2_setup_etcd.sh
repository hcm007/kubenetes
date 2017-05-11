#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#echo $DIR
SERVICE_NAME=etcd
UNIT_FILE=/root/k8s_service/$SERVICE_NAME.service

cat <<EOF >$UNIT_FILE
[Unit]
Description=mahongchao: Etcd Service
After=network.target

[Service]
Type=notify
ExecStart=/opt/mahongchao/k8s/bin/etcd \
  --name infr0  \
#  --cert-file=/etc/kubernetes/ssl/kubernetes.pem \
#  --key-file=/etc/kubernetes/ssl/kubernetes-key.pem \
#  --client-cert-auth --peer-cert-file=/etc/kubernetes/ssl/kubernetes.pem \
#  --peer-key-file=/etc/kubernetes/ssl/kubernetes-key.pem \
#  --trusted-ca-file=/etc/kubernetes/ssl/ca.pem \
#  --peer-client-cert-auth --peer-trusted-ca-file=/etc/kubernetes/ssl/ca.pem \
  --initial-advertise-peer-urls https://45.79.83.78:2380 \
  --listen-peer-urls https://45.79.83.78:2380 \
  --listen-client-urls https://45.79.83.78:2379,https://127.0.0.1:2379 \
  --advertise-client-urls https://45.79.83.78:2379 \
  --initial-cluster-token etcd-cluster-0 \
  --initial-cluster infr0=https://45.79.83.78:2380,infr1=https://23.92.26.107:2380 \
  --initial-cluster-state new \
  --data-dir=/var/lib/etcd
Restart=on-failure
RestartSec=5
LimitNOFILE=65536

[Install]
WantedBy=multi-user.target
EOF
systemctl enable $UNIT_FILE
systemctl start $SERVICE_NAME.service
