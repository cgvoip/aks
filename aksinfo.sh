#!/bin/bash
reset=`tput sgr0`
echo ""
tput setaf 6; echo "AKS Name Space"
$reset
kubectl get ns
echo ""
tput setaf 6; echo "AKS Nodes"
$reset
kubectl get nodes
echo ""
tput setaf 6; echo "AKS Pods"
$reset
kubectl get Pods
echo ""
tput setaf 6; echo "AKS Services"
$reset
kubectl get services
