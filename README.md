# Reorganize Kubernetes Infrastructure

## Changes
1) File Organization
2) Additional variables
3) PD
4) IAM Roles
5) Runtime commands for kubectl credentials and log


## Project Structure

- ./
    - .terraform.lock.hcl
    - 0-var.tf
    - 1-auth.tf
    - 10-iam.tf
    - 11-runtime.tf
    - 2-vpc.tf
    - 3-subnet.tf
    - 4-router.tf
    - 5-nat.tf
    - 6-firewall.tf
    - 7-cluster.tf
    - 8-nodepool.tf
    - 9-storage.tf
    - key.json
    - kubeconfig.txt
    - tfvars-template
    - tree.py
    - .terraform/
        - terraform.tfstate
        - providers/
            - registry.terraform.io/
                - hashicorp/
                    - google/
                        - 5.25.0/
                            - windows_amd64/
                                - terraform-provider-google_v5.25.0_x5.exe
                    - local/
                        - 2.5.2/
                            - windows_amd64/
                                - LICENSE.txt
                                - terraform-provider-local_v2.5.2_x5.exe
                    - null/
                        - 3.2.3/
                            - windows_amd64/
                                - LICENSE.txt
                                - terraform-provider-null_v3.2.3_x5.exe