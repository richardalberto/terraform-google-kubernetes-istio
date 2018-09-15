output "url" {
  value = "https://${google_container_cluster.gke_cluster.endpoint}"
}

output "admin_username" {
  value = "${var.master_username}"
}

output "admin_password" {
  value = "${var.master_password}"
}

output "client_certificate" {
  value = "${base64decode(google_container_cluster.gke_cluster.master_auth.0.client_certificate)}"
}

output "client_key" {
  value = "${base64decode(google_container_cluster.gke_cluster.master_auth.0.client_key)}"
}

output "cluster_ca_certificate" {
  value = "${base64decode(google_container_cluster.gke_cluster.master_auth.0.cluster_ca_certificate)}"
}

output "kube_config" {
  value = <<EOT
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${google_container_cluster.gke_cluster.master_auth.0.cluster_ca_certificate}
    server: https://${google_container_cluster.gke_cluster.endpoint}
  name: kubernetes
contexts:
- context:
    cluster: kubernetes
    user: admin
  name: context
current-context: context
kind: Config
preferences: {}
users:
- name: admin
  user:
    password: ${var.master_username}
    username: ${var.master_password}
EOT
}
