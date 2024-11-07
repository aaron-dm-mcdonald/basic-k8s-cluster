

variable "zone" {
  description = "The zone where the cluster will be created"
  type        = string
  default     = "us-central1-a"
}


locals {
  region = substr(var.zone, 0, length(var.zone) - 2)
  
}



variable "project" {
  description = "The GCP project ID"
  type        = string
  default     = "sandbox-project-primary"
}



variable "machine-type" {
  description = "Machine Type for nodes"
  type        = string
  default     = "n2-standard-4"
}
