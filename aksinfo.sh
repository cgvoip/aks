#!/bin/bash
echo ""
tput setaf 6; echo "AKS Name Space"
kubectl get ns
echo ""
tput setaf 6; echo "AKS Nodes"
kubectl get nodes
echo ""
tput setaf 6; echo "AKS Pods"
kubectl get Pods
echo ""
tput setaf 6; echo "AKS Services"
kubectl get services
