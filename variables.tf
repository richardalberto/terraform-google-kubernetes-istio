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