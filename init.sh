#! /bin/bash

: ${BACKEND:="iptables"}

usage(){
  echo "usage:"
  echo "   ./init.sh iptables or ipvs or nft or ebpf"
  echo "   Example: ./init.sh ipvs"
}

if [ -z "$1" ]; then
  usage
  exit 1
fi

BACKEND=$1
export BACKEND=${BACKEND}
if [ "$BACKEND" == "ebpf" ]; then
  echo "WARNING: OS Kernel must be  > 5.15"
  kubectl apply -f kpng-ebpf.yaml
else
  envsubst <kpng.yaml.tmpl > kpng.yaml
  kubectl apply -f  kpng.yaml
fi
