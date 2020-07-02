resource "random_string" "cluster_name" {
  count   = var.cluster_name == "" ? 1 : 0
  length  = 10
  special = false
  upper   = false
}

data "civo_kubernetes_version" "channel" {
  filter {
    key    = "type"
    values = [var.channel]
  }
}

data "civo_instances_size" "node_size" {
  filter {
    key    = "name"
    values = [var.node_size]
  }
}

resource "civo_kubernetes_cluster" "cluster" {
  applications       = var.applications
  kubernetes_version = element(data.civo_kubernetes_version.channel.versions, 0).version
  name               = local.cluster_name
  num_target_nodes   = var.num_target_nodes
  target_nodes_size  = element(data.civo_instances_size.node_size.sizes, 0).name
}

resource "local_file" "kubeconfig" {
  count    = var.write_kubeconfig ? 1 : 0
  content  = civo_kubernetes_cluster.cluster.kubeconfig
  filename = format("%s/kubeconfig.yml", path.root)
}
