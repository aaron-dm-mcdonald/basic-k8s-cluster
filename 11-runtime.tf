resource "null_resource" "get_credentials" {
  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials primary --zone ${var.zone} --project ${var.project}"
  }

  depends_on = [google_container_cluster.primary]
}

resource "local_file" "kubeconfig" {
  content  = <<EOF
  apiVersion: v1
  clusters:
  - cluster:
      server: https://${google_container_cluster.primary.endpoint}
    name: ${google_container_cluster.primary.name}
  contexts:
  - context:
      cluster: ${google_container_cluster.primary.name}
      user: ${google_container_cluster.primary.name}
    name: ${google_container_cluster.primary.name}
  current-context: ${google_container_cluster.primary.name}
  kind: Config
  EOF
  filename = "${path.module}/kubeconfig.txt"
}

