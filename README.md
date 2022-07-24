# kpng-demo

## Install

1. You should have a kubernetes cluster
2. Delete kube-proxy
3. Install Kpng

```shell
kubectl apply -f kpng.yaml
```

And then, you should see as show below:

```shell
[root@master ~]# kubectl get po -n kube-system
NAME                                               READY   STATUS    RESTARTS   AGE
calico-kube-controllers-784dcb7597-sx9md           1/1     Running   0          4h2m
calico-node-5b9r5                                  1/1     Running   0          3h40m
calico-node-s7qq8                                  1/1     Running   0          3h40m
coredns-64897985d-5lkxb                            1/1     Running   0          4h3m
coredns-64897985d-dbllv                            1/1     Running   0          4h3m
etcd-kpng-proxy-control-plane                      1/1     Running   0          4h3m
kpng-pbjbq                                         2/2     Running   0          4h1m
kpng-qm6xq                                         2/2     Running   0          4h1m
kube-apiserver-kpng-proxy-control-plane            1/1     Running   0          4h3m
kube-controller-manager-kpng-proxy-control-plane   1/1     Running   0          4h3m
kube-scheduler-kpng-proxy-control-plane            1/1     Running   0          4h3m
```
