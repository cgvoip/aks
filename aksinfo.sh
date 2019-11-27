#!/bin/bash
echo ""
echo -e "\e[32mAKS Name Space\e[0m"
kubectl get ns
echo ""
echo -e "\e[32mAKS Nodes\e[0m"
kubectl get nodes
echo ""
echo -e "\e[32mAKS Pods\e[0m"
kubectl get Pods
echo ""
echo -e "\e[32mAKS Services\e[0m"
kubectl get services
