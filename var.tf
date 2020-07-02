variable "applications" { default = "Traefik, Metrics Server" }
variable "channel" { default = "stable" }
variable "cluster_name" { default = "" }
variable "node_size" { default = "g2.xsmall" }
variable "num_target_nodes" { default = 1 }
variable "write_kubeconfig" { default = true }
