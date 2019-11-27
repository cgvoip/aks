#!/bin/bash
echo ""
echo -e "\e[36mAKS Name Space\e[0m"
kubectl get ns
echo ""
echo -e "\e[36mAKS Nodes\e[0m"
kubectl get nodes
echo ""
echo -e "\e[36mAKS Pods\e[0m"
kubectl get Pods
echo ""
echo -e "\e[36mAKS Services\e[0m"
kubectl get services
