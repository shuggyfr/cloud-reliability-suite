# Milestone M1 – EKS Cluster Up

## What changed
- Provisioned a new AWS VPC, subnets, and NAT gateway.
- Created an EKS cluster (`crs-eks`).
- Added a managed node group (EC2 worker nodes).
- Bootstrapped IAM user `terraform-admin` with cluster-admin permissions.

## Why (milestone)
This milestone establishes the foundation for Kubernetes workloads in AWS.  
EKS provides the control plane, while managed node groups supply compute capacity.  
We also confirmed IAM user access using the new **Access Entries** model.

## Evidence
```bash
$ kubectl get nodes
NAME                         STATUS   ROLES    AGE   VERSION
ip-10-0-2-254...             Ready    <none>   177m  v1.30.14-eks-113cf36

$ kubectl get ns
NAME              STATUS   AGE
default           Active   16h
kube-node-lease   Active   16h
kube-public       Active   16h
kube-system       Active   16h
