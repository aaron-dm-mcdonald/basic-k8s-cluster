resource "google_service_account" "kubernetes" {
  account_id = "kubernetes"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_iam

resource "google_project_iam_member" "kubernetes-1" {
  project = var.project
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.kubernetes.email}"
}

resource "google_project_iam_member" "kubernetes-2" {
  project = var.project
  role    = "roles/artifactregistry.reader"
  member  = "serviceAccount:${google_service_account.kubernetes.email}"
}