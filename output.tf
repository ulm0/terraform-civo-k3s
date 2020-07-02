output "cluster_ca_certificate" {
  description = "Cluster ca certificate"
  value       = base64decode(yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).clusters.0.cluster.certificate-authority-data)
}

output "host" {
  description = "Endpoint for k3s api-server"
  value       = civo_kubernetes_cluster.cluster.api_endpoint
}

output "password" {
  description = "Cluster admin password"
  value       = yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users.0.user.password
}

output "username" {
  description = "Cluster admin username"
  value       = yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users.0.user.username
}
