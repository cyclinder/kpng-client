#! /bin/bash

kubectl create sa -n kube-system kpng
kubectl create clusterrolebinding kpng --clusterrole=system:node-proxier --serviceaccount=kube-system:kpng

cp /root/.kube/config kubeconfig.conf
kubectl create cm -n kube-system kpng --from-file=kubeconfig.conf
rm kubeconfig.conf

kubectl apply -f kpng.yaml