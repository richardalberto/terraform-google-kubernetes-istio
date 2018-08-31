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
