variable "applications" {
  default     = "Traefik, Metrics Server"
  description = "Apps from Civo kubernetes marketplace"
  type        = string
}

variable "channel" {
  default     = "stable"
  description = "Channel to pull versions from. Possible values are development, stable and deprecated"
  type        = string
}

variable "cluster_name" {
  default     = ""
  description = "Name for the cluster, if not set one is randomly generated"
  type        = string
}

variable "node_size" {
  default     = "g3.k3s.xsmall"
  description = "Instance size for nodes. Possible values are g3.k3s.xsmall, g3.k3s.small, g3.k3s.medium, g3.k3s.large, g3.k3s.xlarge and g3.k3s.2xlarge"
  type        = string
}

variable "num_target_nodes" {
  description = "Ammount of nodes to be created for this cluster"
  default     = 1
  type        = number
}

variable "write_kubeconfig" {
  description = "Write kubeconfig to file"
  default     = true
  type        = bool
}
