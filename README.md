# k3s on Civo

## Usage

```hcl
module "k3s" {
  source  = "ulm0/k3s/civo"
}
```

## Variables

|Name|Description|Default|
|:---|---|:---:|
|`applications`|Apps from Civo kubernetes marketplace|`Traefik, Metrics Server`|
|`channel`|Channel to pull versions from. Possible values are development, stable and deprecated|`stable`|
|`cluster_name`|Name for the cluster, if not set one is randomly generated|`""`|
|`node_size`|Instance size for nodes. Possible values are `g2.xsmall`, `g2.small`, `g2.medium`, `g2.large`, `g2.xlarge` and `g2.2xlarge`|`g2.xsmall`|
|`num_target_nodes`|Ammount of nodes to be created for this cluster|`1`|
|`write_kubeconfig`|Write kubeconfig to file|`true`|

## Outputs

|Name|Description|
|:---|---|
|`cluster_ca_certificate`|Cluster ca certificate|
|`host`|Endpoint for k3s api-server|
|`password`|Cluster admin password|
|`username`|Cluster admin username|
