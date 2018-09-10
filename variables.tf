variable "gcp_project" {
  description = "The name of the GCP Project where all resources will be launched."
}

variable "gcp_region" {
  description = "The region in which all GCP resources will be launched."
}

variable "cluster_name" {
  description = "GKE cluster name"
}

variable "node_count" {
  description = "GKE cluster node count"
}

variable "master_username" {
  description = "GKE cluster master username"
}

variable "master_password" {
  description = "GKE cluster master password"
}

variable "cluster_region" {
  description = "GKE cluster region"
}

variable "helm_repository" {
  description = "Helm repository where the istio chart release is published"
}

variable "istio_version" {
  description = "Istio chart version"
}
