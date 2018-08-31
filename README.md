# terraform-google-kubernetes-istio
Create a kubernetes cluster with istio enabled

## Usage
```
module "k8s_cluster" {
  source = "github.com/richardalberto/terraform-google-kubernetes-istio"

  gcp_project = "google-project-id"
  gcp_region  = "us-east4"
  
  cluster_name    = "test-cluster"
  cluster_region  = "us-east4"
  node_count      = 1
  master_username = "admin"
  master_password = "this_is_a_pretty_long_password_we_will_should_change!"

  helm_repository = "https://chart-repo.storage.googleapis.com"
}
```