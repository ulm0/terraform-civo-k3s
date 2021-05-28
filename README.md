# k3s on Civo

## Usage

```hcl
module "k3s" {
  source  = "ulm0/k3s/civo"
}
```

## Variables

| Name               | Description                                                                                                                                         |          Default          |
| :----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | :-----------------------: |
| `applications`     | Apps from Civo kubernetes marketplace                                                                                                               | `Traefik, Metrics Server` |
| `channel`          | Channel to pull versions from. Possible values are development, stable and deprecated                                                               |         `stable`          |
| `cluster_name`     | Name for the cluster, if not set one is randomly generated                                                                                          |           `""`            |
| `node_size`        | Instance size for nodes. Possible values are `g3.k3s.xsmall`, `g3.k3s.small`, `g3.k3s.medium`, `g3.k3s.large`, `g3.k3s.xlarge` and `g3.k3s.2xlarge` |      `g3.k3s.xsmall`      |
| `num_target_nodes` | Ammount of nodes to be created for this cluster                                                                                                     |            `1`            |
| `write_kubeconfig` | Write kubeconfig to file                                                                                                                            |          `true`           |

## Outputs

| Name                     | Description                 |
| :----------------------- | --------------------------- |
| `cluster_ca_certificate` | Cluster ca certificate      |
| `host`                   | Endpoint for k3s api-server |
| `password`               | Cluster admin password      |
| `username`               | Cluster admin username      |
