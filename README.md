Terraform Azure Kubernetes Cluster Module

## Design

![](design/blueprint.png)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.42.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.kubernetes_cluster](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aci_connector_linux"></a> [aci\_connector\_linux](#input\_aci\_connector\_linux) | A map of ACI connector Linux configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_api_server_access_profile"></a> [api\_server\_access\_profile](#input\_api\_server\_access\_profile) | A map of API server access profile configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_auto_scaler_profile"></a> [auto\_scaler\_profile](#input\_auto\_scaler\_profile) | A map of auto scaler profile configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_automatic_upgrade_channel"></a> [automatic\_upgrade\_channel](#input\_automatic\_upgrade\_channel) | The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`. | `string` | `null` | no |
| <a name="input_azure_active_directory_role_based_access_control"></a> [azure\_active\_directory\_role\_based\_access\_control](#input\_azure\_active\_directory\_role\_based\_access\_control) | A map of Azure Active Directory role-based access control configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_azure_policy_enabled"></a> [azure\_policy\_enabled](#input\_azure\_policy\_enabled) | Should the Azure Policy Add-on be enabled for this Kubernetes Cluster? | `bool` | `null` | no |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | The client ID of the service principal to use for the Kubernetes Cluster. Defaults to null. | `string` | `null` | no |
| <a name="input_confidential_computing"></a> [confidential\_computing](#input\_confidential\_computing) | A map of confidential computing configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_default_node_pool_auto_scaling_enabled"></a> [default\_node\_pool\_auto\_scaling\_enabled](#input\_default\_node\_pool\_auto\_scaling\_enabled) | Should the Kubernetes Auto Scaler be enabled for this Node Pool? Defaults to false. | `bool` | `false` | no |
| <a name="input_default_node_pool_capacity_reservation_group_id"></a> [default\_node\_pool\_capacity\_reservation\_group\_id](#input\_default\_node\_pool\_capacity\_reservation\_group\_id) | The ID of the Capacity Reservation Group to which the default node pool should be assigned. | `string` | `null` | no |
| <a name="input_default_node_pool_fips_enabled"></a> [default\_node\_pool\_fips\_enabled](#input\_default\_node\_pool\_fips\_enabled) | Should the nodes in this Node Pool have FIPS enabled? Defaults to null. | `bool` | `null` | no |
| <a name="input_default_node_pool_host_encryption_enabled"></a> [default\_node\_pool\_host\_encryption\_enabled](#input\_default\_node\_pool\_host\_encryption\_enabled) | Should the nodes in this Node Pool have host encryption enabled? Defaults to false. | `bool` | `false` | no |
| <a name="input_default_node_pool_host_group_id"></a> [default\_node\_pool\_host\_group\_id](#input\_default\_node\_pool\_host\_group\_id) | The ID of the Proximity Placement Group to which the default node pool should be assigned. | `string` | `null` | no |
| <a name="input_default_node_pool_kubelet_config"></a> [default\_node\_pool\_kubelet\_config](#input\_default\_node\_pool\_kubelet\_config) | A map of kubelet configurations to apply to the nodes in this Node Pool. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_default_node_pool_kubelet_disk_type"></a> [default\_node\_pool\_kubelet\_disk\_type](#input\_default\_node\_pool\_kubelet\_disk\_type) | The type of disk to use for the kubelet. Possible values are `OS` and `Ephemeral`. Defaults to null. | `string` | `null` | no |
| <a name="input_default_node_pool_linux_os_config"></a> [default\_node\_pool\_linux\_os\_config](#input\_default\_node\_pool\_linux\_os\_config) | A map of Linux OS configurations to apply to the nodes in this Node Pool. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_default_node_pool_max_count"></a> [default\_node\_pool\_max\_count](#input\_default\_node\_pool\_max\_count) | The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000. | `number` | `null` | no |
| <a name="input_default_node_pool_max_pods"></a> [default\_node\_pool\_max\_pods](#input\_default\_node\_pool\_max\_pods) | The maximum number of pods that can run on each agent. Changing this forces a new resource to be created. | `number` | `null` | no |
| <a name="input_default_node_pool_min_count"></a> [default\_node\_pool\_min\_count](#input\_default\_node\_pool\_min\_count) | The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000. | `number` | `null` | no |
| <a name="input_default_node_pool_name"></a> [default\_node\_pool\_name](#input\_default\_node\_pool\_name) | The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_default_node_pool_node_count"></a> [default\_node\_pool\_node\_count](#input\_default\_node\_pool\_node\_count) | The number of nodes which should exist in this Node Pool. Defaults to null. | `number` | `null` | no |
| <a name="input_default_node_pool_node_labels"></a> [default\_node\_pool\_node\_labels](#input\_default\_node\_pool\_node\_labels) | A map of Kubernetes labels which should be applied to nodes in this Node Pool. | `map(string)` | `null` | no |
| <a name="input_default_node_pool_node_public_ip_enabled"></a> [default\_node\_pool\_node\_public\_ip\_enabled](#input\_default\_node\_pool\_node\_public\_ip\_enabled) | Should each node in this Node Pool have a public IP address? Defaults to false. | `bool` | `false` | no |
| <a name="input_default_node_pool_node_public_ip_prefix_id"></a> [default\_node\_pool\_node\_public\_ip\_prefix\_id](#input\_default\_node\_pool\_node\_public\_ip\_prefix\_id) | The ID of the Public IP Prefix to use for the nodes in this Node Pool. | `string` | `null` | no |
| <a name="input_default_node_pool_node_taints"></a> [default\_node\_pool\_node\_taints](#input\_default\_node\_pool\_node\_taints) | A list of Kubernetes taints which should be applied to nodes in this Node Pool. | `list(string)` | `null` | no |
| <a name="input_default_node_pool_only_critical_addons_enabled"></a> [default\_node\_pool\_only\_critical\_addons\_enabled](#input\_default\_node\_pool\_only\_critical\_addons\_enabled) | Should only critical add-ons be enabled for this Node Pool? Defaults to null. | `bool` | `null` | no |
| <a name="input_default_node_pool_orchestrator_version"></a> [default\_node\_pool\_orchestrator\_version](#input\_default\_node\_pool\_orchestrator\_version) | The version of Kubernetes to use for this Node Pool. Defaults to null. | `string` | `null` | no |
| <a name="input_default_node_pool_os_disk_size_gb"></a> [default\_node\_pool\_os\_disk\_size\_gb](#input\_default\_node\_pool\_os\_disk\_size\_gb) | The size of the OS Disk which should be used for each agent in the Node Pool. Changing this forces a new resource to be created. | `number` | `null` | no |
| <a name="input_default_node_pool_os_disk_type"></a> [default\_node\_pool\_os\_disk\_type](#input\_default\_node\_pool\_os\_disk\_type) | The type of OS disk to use for the nodes in this Node Pool. Possible values are `Managed` and `Ephemeral`. Defaults to `Managed`. | `string` | `"Managed"` | no |
| <a name="input_default_node_pool_os_sku"></a> [default\_node\_pool\_os\_sku](#input\_default\_node\_pool\_os\_sku) | The SKU of the OS to use for the nodes in this Node Pool. Defaults to null. | `string` | `null` | no |
| <a name="input_default_node_pool_pod_subnet_id"></a> [default\_node\_pool\_pod\_subnet\_id](#input\_default\_node\_pool\_pod\_subnet\_id) | The ID of the Subnet to use for the pods in this Node Pool. Defaults to null. | `string` | `null` | no |
| <a name="input_default_node_pool_proximity_placement_group_id"></a> [default\_node\_pool\_proximity\_placement\_group\_id](#input\_default\_node\_pool\_proximity\_placement\_group\_id) | The ID of the Proximity Placement Group to which the default node pool should be assigned. | `string` | `null` | no |
| <a name="input_default_node_pool_scale_down_mode"></a> [default\_node\_pool\_scale\_down\_mode](#input\_default\_node\_pool\_scale\_down\_mode) | The scale down mode for the default node pool. Possible values are `Delete` and `Deallocate`. Defaults to null. | `string` | `null` | no |
| <a name="input_default_node_pool_subnet_id"></a> [default\_node\_pool\_subnet\_id](#input\_default\_node\_pool\_subnet\_id) | The ID of the Subnet to use for the nodes in this Node Pool. Defaults to null. | `string` | `null` | no |
| <a name="input_default_node_pool_tags"></a> [default\_node\_pool\_tags](#input\_default\_node\_pool\_tags) | A map of tags to assign to the nodes in this Node Pool. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_default_node_pool_type"></a> [default\_node\_pool\_type](#input\_default\_node\_pool\_type) | The type of node pool to use. Possible values are `VirtualMachineScaleSets` and `AvailabilitySet`. Defaults to `VirtualMachineScaleSets`. | `string` | `"VirtualMachineScaleSets"` | no |
| <a name="input_default_node_pool_ultra_ssd_enabled"></a> [default\_node\_pool\_ultra\_ssd\_enabled](#input\_default\_node\_pool\_ultra\_ssd\_enabled) | Should Ultra SSD be enabled for the nodes in this Node Pool? Defaults to false. | `bool` | `false` | no |
| <a name="input_default_node_pool_upgrade_settings_max_surge"></a> [default\_node\_pool\_upgrade\_settings\_max\_surge](#input\_default\_node\_pool\_upgrade\_settings\_max\_surge) | The maximum number of nodes which can be upgraded at once. Defaults to null. | `string` | `null` | no |
| <a name="input_default_node_pool_vm_size"></a> [default\_node\_pool\_vm\_size](#input\_default\_node\_pool\_vm\_size) | The size of the Virtual Machine, e.g. Standard\_DS2\_v2, to use for the default Kubernetes Node Pool. | `string` | n/a | yes |
| <a name="input_default_node_pool_workload_runtime"></a> [default\_node\_pool\_workload\_runtime](#input\_default\_node\_pool\_workload\_runtime) | The workload runtime to use for the nodes in this Node Pool. Possible values are `OCIContainer` and `WasmWasi`. Defaults to null. | `string` | `null` | no |
| <a name="input_default_node_pool_zones"></a> [default\_node\_pool\_zones](#input\_default\_node\_pool\_zones) | A list of Availability Zones to use for the nodes in this Node Pool. Defaults to null. | `list(string)` | `null` | no |
| <a name="input_disk_encryption_set_id"></a> [disk\_encryption\_set\_id](#input\_disk\_encryption\_set\_id) | The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. | `string` | `null` | no |
| <a name="input_dns_prefix"></a> [dns\_prefix](#input\_dns\_prefix) | DNS prefix specified when creating the managed cluster. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_dns_prefix_private_cluster"></a> [dns\_prefix\_private\_cluster](#input\_dns\_prefix\_private\_cluster) | The DNS prefix to use with private clusters. | `string` | `null` | no |
| <a name="input_edge_zone"></a> [edge\_zone](#input\_edge\_zone) | A map of edge zone configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_http_application_routing_enabled"></a> [http\_application\_routing\_enabled](#input\_http\_application\_routing\_enabled) | Should HTTP application routing be enabled for the Kubernetes Cluster? Defaults to null. | `bool` | `null` | no |
| <a name="input_http_proxy_config"></a> [http\_proxy\_config](#input\_http\_proxy\_config) | A map of HTTP proxy configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | A list of user assigned identity IDs to use for the Kubernetes Cluster. Defaults to null. | `list(string)` | `null` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | The type of identity to use for the Kubernetes Cluster. Possible values are `SystemAssigned`, `UserAssigned`, and `None`. Defaults to null. | `string` | `null` | no |
| <a name="input_image_cleaner_enabled"></a> [image\_cleaner\_enabled](#input\_image\_cleaner\_enabled) | Should image cleaner be enabled for the Kubernetes Cluster? Defaults to null. | `bool` | `null` | no |
| <a name="input_image_cleaner_interval_hours"></a> [image\_cleaner\_interval\_hours](#input\_image\_cleaner\_interval\_hours) | The interval in hours at which the image cleaner should run. Defaults to 48. | `number` | `48` | no |
| <a name="input_ingress_application_gateway"></a> [ingress\_application\_gateway](#input\_ingress\_application\_gateway) | A map of ingress application gateway configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_key_management_service"></a> [key\_management\_service](#input\_key\_management\_service) | A map of key management service configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_key_vault_secrets_provider"></a> [key\_vault\_secrets\_provider](#input\_key\_vault\_secrets\_provider) | A map of key vault secrets provider configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_kubelet_identity"></a> [kubelet\_identity](#input\_kubelet\_identity) | A map of kubelet identity configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_kubernetes_cluster_name"></a> [kubernetes\_cluster\_name](#input\_kubernetes\_cluster\_name) | The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | The version of Kubernetes to use for the Kubernetes Cluster. Defaults to null. | `string` | `null` | no |
| <a name="input_linux_profile"></a> [linux\_profile](#input\_linux\_profile) | A map of Linux profile configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_linux_profile_ssh_key_key_data"></a> [linux\_profile\_ssh\_key\_key\_data](#input\_linux\_profile\_ssh\_key\_key\_data) | The SSH key data to use for the Linux profile. Defaults to null. | `string` | `null` | no |
| <a name="input_local_account_disabled"></a> [local\_account\_disabled](#input\_local\_account\_disabled) | Should local accounts be disabled for the Kubernetes Cluster? Defaults to null. | `bool` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | The location/region where the resources will be created. | `string` | n/a | yes |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | A map of maintenance window configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_microsoft_defender_log_analytics_workspace_id"></a> [microsoft\_defender\_log\_analytics\_workspace\_id](#input\_microsoft\_defender\_log\_analytics\_workspace\_id) | The ID of the log analytics workspace to use for Microsoft Defender. Defaults to null. | `string` | `null` | no |
| <a name="input_monitor_metrics"></a> [monitor\_metrics](#input\_monitor\_metrics) | A map of monitor metrics configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_network_profile"></a> [network\_profile](#input\_network\_profile) | A map of network profile configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_node_network_profile"></a> [node\_network\_profile](#input\_node\_network\_profile) | A map of node network profile configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_node_resource_group"></a> [node\_resource\_group](#input\_node\_resource\_group) | The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_object_id"></a> [object\_id](#input\_object\_id) | The object ID of the service principal to use for the Kubernetes Cluster. Defaults to null. | `string` | `null` | no |
| <a name="input_oidc_issuer_enabled"></a> [oidc\_issuer\_enabled](#input\_oidc\_issuer\_enabled) | Should OIDC issuer be enabled for the Kubernetes Cluster? Defaults to null. | `bool` | `null` | no |
| <a name="input_oms_agent_log_analytics_workspace_id"></a> [oms\_agent\_log\_analytics\_workspace\_id](#input\_oms\_agent\_log\_analytics\_workspace\_id) | The ID of the log analytics workspace to use for the OMS agent. Defaults to null. | `string` | `null` | no |
| <a name="input_open_service_mesh_enabled"></a> [open\_service\_mesh\_enabled](#input\_open\_service\_mesh\_enabled) | Should open service mesh be enabled for the Kubernetes Cluster? Defaults to null. | `bool` | `null` | no |
| <a name="input_private_cluster_enabled"></a> [private\_cluster\_enabled](#input\_private\_cluster\_enabled) | Should this Kubernetes Cluster have a Private Cluster? Defaults to false. | `bool` | `false` | no |
| <a name="input_private_cluster_public_fqdn_enabled"></a> [private\_cluster\_public\_fqdn\_enabled](#input\_private\_cluster\_public\_fqdn\_enabled) | Should the FQDN for the Private Cluster be publicly accessible? Defaults to false. | `bool` | `false` | no |
| <a name="input_private_dns_zone_id"></a> [private\_dns\_zone\_id](#input\_private\_dns\_zone\_id) | The ID of the Private DNS Zone which should be used for this Kubernetes Cluster. | `string` | `null` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Should public network access be enabled for the Kubernetes Cluster? Defaults to true. | `bool` | `true` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group, where the resources will be deployed. | `string` | n/a | yes |
| <a name="input_role_based_access_control_enabled"></a> [role\_based\_access\_control\_enabled](#input\_role\_based\_access\_control\_enabled) | Should Role Based Access Control be enabled for this Kubernetes Cluster? Defaults to true. | `bool` | `true` | no |
| <a name="input_run_command_enabled"></a> [run\_command\_enabled](#input\_run\_command\_enabled) | Should run command be enabled for the Kubernetes Cluster? Defaults to true. | `bool` | `true` | no |
| <a name="input_service_principal"></a> [service\_principal](#input\_service\_principal) | A map of service principal configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free and Paid (which includes the Uptime SLA). Defaults to Free. | `string` | `"Free"` | no |
| <a name="input_storage_profile"></a> [storage\_profile](#input\_storage\_profile) | A map of storage profile configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_user_assigned_identity_id"></a> [user\_assigned\_identity\_id](#input\_user\_assigned\_identity\_id) | The ID of the user assigned identity to use for the Kubernetes Cluster. Defaults to null. | `string` | `null` | no |
| <a name="input_web_app_routing"></a> [web\_app\_routing](#input\_web\_app\_routing) | A map of web app routing configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_windows_profile"></a> [windows\_profile](#input\_windows\_profile) | A map of Windows profile configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_workload_autoscaler_profile"></a> [workload\_autoscaler\_profile](#input\_workload\_autoscaler\_profile) | A map of workload autoscaler profile configurations for the Kubernetes Cluster. Defaults to null. | `map(string)` | `null` | no |
| <a name="input_workload_identity_enabled"></a> [workload\_identity\_enabled](#input\_workload\_identity\_enabled) | Should workload identity be enabled for the Kubernetes Cluster? Defaults to false. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault_secrets_provider"></a> [key\_vault\_secrets\_provider](#output\_key\_vault\_secrets\_provider) | n/a |
| <a name="output_kubernetes_cluster_fqdn"></a> [kubernetes\_cluster\_fqdn](#output\_kubernetes\_cluster\_fqdn) | The FQDN of the Azure Kubernetes Managed Cluster. |
| <a name="output_kubernetes_cluster_id"></a> [kubernetes\_cluster\_id](#output\_kubernetes\_cluster\_id) | The ID Kubernetes Managed Cluster. |
| <a name="output_kubernetes_cluster_name"></a> [kubernetes\_cluster\_name](#output\_kubernetes\_cluster\_name) | The name Kubernetes Managed Cluster. |
