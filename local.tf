locals {
  cluster_name = var.cluster_name != "" ? var.cluster_name : format("cluster-%s", random_string.cluster_name.result)
}
