# Basic Kubernetes Cluster v2

## Setup

- Add default values for variables in 0-var.tf 
- Update 1-auth.tf for the service account JSON key and backend info for the bucket 

## Changes
1) File Organization
2) Additional variables
3) PD
4) IAM Roles
5) Runtime commands for kubectl credentials and log


## Project Structure

- ./
    - 0-var.tf
    - 1-auth.tf
    - 2-vpc.tf
    - 3-subnet.tf
    - 4-router.tf
    - 5-nat.tf
    - 6-firewall.tf
    - 7-cluster.tf
    - 8-nodepool.tf
    - 9-storage.tf
    - 10-iam.tf
    - 11-runtime.tf
    - tfvars-template
    