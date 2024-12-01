resource "google_container_cluster" "primary" {
  name                     = "primary"
  location                 = var.zone
  remove_default_node_pool = true
  initial_node_count       = 2
  network                  = google_compute_network.cluster-vpc.self_link
  subnetwork               = google_compute_subnetwork.private.self_link
  networking_mode          = "VPC_NATIVE"

logging_config {
  enable_components = ["APISERVER", "SYSTEM_COMPONENTS", "WORKLOADS"]
}
  # Optional, if you want multi-zonal cluster
  node_locations = [
    "${local.region}-b"

  ]

  addons_config {
    http_load_balancing {
      disabled = false
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
  }

  release_channel {
    channel = "REGULAR"
  }

  workload_identity_config {
    workload_pool = "${var.project}.svc.id.goog"
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = "k8s-pod-range"
    services_secondary_range_name = "k8s-service-range"
  }

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = "172.16.0.0/28"
  }

  deletion_protection = false
}