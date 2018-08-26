apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${ca_certificate}
    server: ${server}
  name: gke-cluster
contexts:
- context:
    cluster: gke-cluster
    user: admin
  name: gke-cluster-admin
current-context: gke-cluster-admin
kind: Config
users:
- name: admin
  user:
    username: '${username}'
    password: '${password}'