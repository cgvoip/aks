#!/bin/bash
echo ""
echo -e "\e[32mAKS Name Space"
kubectl get ns
echo ""
echo -e "\e[32mAKS Nodes"
kubectl get nodes
echo ""
echo -e "\e[32mAKS Pods"
kubectl get Pods
echo ""
echo -e "\e[32mAKS Services"
kubectl get services
