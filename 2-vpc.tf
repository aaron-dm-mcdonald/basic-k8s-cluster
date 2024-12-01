resource "google_compute_network" "cluster-vpc" {
  name                            = "tf-cluster-vpc"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = "false"
  mtu                             = "1460"
  delete_default_routes_on_create = "false"
}