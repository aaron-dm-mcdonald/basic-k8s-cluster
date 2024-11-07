resource "google_compute_disk" "storage" {
  name  = "storage-disk"
  type  = "pd-standard"  # Use "pd-ssd" for SSD disks
  zone  = var.zone       
  size  = 10             # Size in GB
}