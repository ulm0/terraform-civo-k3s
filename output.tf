output "cluster_ca_certificate" { value = base64decode(yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).clusters.0.cluster.certificate-authority-data) }
output "host" { value = civo_kubernetes_cluster.cluster.api_endpoint }
output "kubeconfig" { value = local_file.kubeconfig}
output "password" { value = yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users.0.user.password }
output "username" { value = yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users.0.user.username }
