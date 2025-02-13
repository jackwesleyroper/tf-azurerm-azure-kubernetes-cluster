variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group, where the resources will be deployed."
}

variable "location" {
  type        = string
  description = "The location/region where the resources will be created."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resource."
  default     = {}
}

variable "kubernetes_cluster_name" {
  type        = string
  description = "The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix specified when creating the managed cluster. Changing this forces a new resource to be created."
  default     = null
}

variable "dns_prefix_private_cluster" {
  type        = string
  description = "The DNS prefix to use with private clusters."
  default     = null
}

variable "automatic_upgrade_channel" {
  type        = string
  description = "The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`."
  default     = null
}

variable "disk_encryption_set_id" {
  type        = string
  description = "The ID of the Disk Encryption Set which should be used for the Nodes and Volumes."
  default     = null
}

variable "node_resource_group" {
  type        = string
  description = "The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created."
  default     = null
}

variable "private_cluster_enabled" {
  type        = bool
  description = "Should this Kubernetes Cluster have a Private Cluster? Defaults to false."
  default     = false
}

variable "private_dns_zone_id" {
  type        = string
  description = "The ID of the Private DNS Zone which should be used for this Kubernetes Cluster."
  default     = null
}

variable "private_cluster_public_fqdn_enabled" {
  type        = bool
  description = "Should the FQDN for the Private Cluster be publicly accessible? Defaults to false."
  default     = false
}

variable "sku_tier" {
  type        = string
  description = "The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free and Paid (which includes the Uptime SLA). Defaults to Free."
  default     = "Free"
}

variable "azure_policy_enabled" {
  type        = bool
  description = "Should the Azure Policy Add-on be enabled for this Kubernetes Cluster?"
  default     = null
}

variable "role_based_access_control_enabled" {
  type        = bool
  description = "Should Role Based Access Control be enabled for this Kubernetes Cluster? Defaults to true."
  default     = true
}

variable "default_node_pool_name" {
  type        = string
  description = "The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created."
}

variable "default_node_pool_vm_size" {
  type        = string
  description = "The size of the Virtual Machine, e.g. Standard_DS2_v2, to use for the default Kubernetes Node Pool."
}

variable "default_node_pool_capacity_reservation_group_id" {
  type        = string
  description = "The ID of the Capacity Reservation Group to which the default node pool should be assigned."
  default     = null
}

variable "default_node_pool_auto_scaling_enabled" {
  type        = bool
  description = "Should the Kubernetes Auto Scaler be enabled for this Node Pool? Defaults to false."
  default     = false
}

variable "default_node_pool_host_encryption_enabled" {
  type        = bool
  description = "Should the nodes in this Node Pool have host encryption enabled? Defaults to false."
  default     = false
}

variable "default_node_pool_node_public_ip_enabled" {
  type        = bool
  description = "Should each node in this Node Pool have a public IP address? Defaults to false."
  default     = false
}

variable "default_node_pool_host_group_id" {
  type        = string
  description = "The ID of the Proximity Placement Group to which the default node pool should be assigned."
  default     = null
}

variable "default_node_pool_fips_enabled" {
  type        = bool
  description = "Should the nodes in this Node Pool have FIPS enabled? Defaults to null."
  default     = null
}

variable "default_node_pool_kubelet_disk_type" {
  type        = string
  description = "The type of disk to use for the kubelet. Possible values are `OS` and `Ephemeral`. Defaults to null."
  default     = null
}

variable "default_node_pool_max_pods" {
  type        = number
  description = "The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
  default     = null
}

variable "default_node_pool_node_public_ip_prefix_id" {
  type        = string
  description = "The ID of the Public IP Prefix to use for the nodes in this Node Pool."
  default     = null
}

variable "default_node_pool_node_labels" {
  type        = map(string)
  description = "A map of Kubernetes labels which should be applied to nodes in this Node Pool."
  default     = null
}

variable "default_node_pool_node_taints" {
  type        = list(string)
  description = "A list of Kubernetes taints which should be applied to nodes in this Node Pool."
  default     = null
}

variable "default_node_pool_only_critical_addons_enabled" {
  type        = bool
  description = "Should only critical add-ons be enabled for this Node Pool? Defaults to null."
  default     = null
}

variable "default_node_pool_orchestrator_version" {
  type        = string
  description = "The version of Kubernetes to use for this Node Pool. Defaults to null."
  default     = null
}

variable "default_node_pool_os_disk_size_gb" {
  type        = number
  description = "The size of the OS Disk which should be used for each agent in the Node Pool. Changing this forces a new resource to be created."
  default     = null
}

variable "default_node_pool_os_disk_type" {
  type        = string
  description = "The type of OS disk to use for the nodes in this Node Pool. Possible values are `Managed` and `Ephemeral`. Defaults to `Managed`."
  default     = "Managed"
}

variable "default_node_pool_os_sku" {
  type        = string
  description = "The SKU of the OS to use for the nodes in this Node Pool. Defaults to null."
  default     = null
}

variable "default_node_pool_pod_subnet_id" {
  type        = string
  description = "The ID of the Subnet to use for the pods in this Node Pool. Defaults to null."
  default     = null
}

variable "default_node_pool_proximity_placement_group_id" {
  type        = string
  description = "The ID of the Proximity Placement Group to which the default node pool should be assigned."
  default     = null
}

variable "default_node_pool_scale_down_mode" {
  type        = string
  description = "The scale down mode for the default node pool. Possible values are `Delete` and `Deallocate`. Defaults to null."
  default     = null
}

variable "default_node_pool_type" {
  type        = string
  description = "The type of node pool to use. Possible values are `VirtualMachineScaleSets` and `AvailabilitySet`. Defaults to `VirtualMachineScaleSets`."
  default     = "VirtualMachineScaleSets"
}

variable "default_node_pool_tags" {
  type        = map(string)
  description = "A map of tags to assign to the nodes in this Node Pool. Defaults to null."
  default     = null
}

variable "default_node_pool_ultra_ssd_enabled" {
  type        = bool
  description = "Should Ultra SSD be enabled for the nodes in this Node Pool? Defaults to false."
  default     = false
}

variable "default_node_pool_subnet_id" {
  type        = string
  description = "The ID of the Subnet to use for the nodes in this Node Pool. Defaults to null."
  default     = null
}

variable "default_node_pool_max_count" {
  type        = number
  description = "The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
  default     = null
}

variable "default_node_pool_min_count" {
  type        = number
  description = "The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
  default     = null
}

variable "default_node_pool_node_count" {
  type        = number
  description = "The number of nodes which should exist in this Node Pool. Defaults to null."
  default     = null
}

variable "default_node_pool_workload_runtime" {
  type        = string
  description = "The workload runtime to use for the nodes in this Node Pool. Possible values are `OCIContainer` and `WasmWasi`. Defaults to null."
  default     = null
}

variable "default_node_pool_zones" {
  type        = list(string)
  description = "A list of Availability Zones to use for the nodes in this Node Pool. Defaults to null."
  default     = null
}

variable "default_node_pool_kubelet_config" {
  type        = map(string)
  description = "A map of kubelet configurations to apply to the nodes in this Node Pool. Defaults to null."
  default     = null
}

variable "default_node_pool_linux_os_config" {
  type        = map(string)
  description = "A map of Linux OS configurations to apply to the nodes in this Node Pool. Defaults to null."
  default     = null
}

variable "default_node_pool_upgrade_settings_max_surge" {
  type        = string
  description = "The maximum number of nodes which can be upgraded at once. Defaults to null."
  default     = null
}

variable "network_profile" {
  type        = map(string)
  description = "A map of network profile configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "auto_scaler_profile" {
  type        = map(string)
  description = "A map of auto scaler profile configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "identity_type" {
  type        = string
  description = "The type of identity to use for the Kubernetes Cluster. Possible values are `SystemAssigned`, `UserAssigned`, and `None`. Defaults to null."
  default     = null
}

variable "identity_ids" {
  description = "A list of user assigned identity IDs to use for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "kubelet_identity" {
  description = "A map of kubelet identity configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "client_id" {
  type        = string
  description = "The client ID of the service principal to use for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "object_id" {
  type        = string
  description = "The object ID of the service principal to use for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "user_assigned_identity_id" {
  type        = string
  description = "The ID of the user assigned identity to use for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "linux_profile" {
  type        = map(string)
  description = "A map of Linux profile configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "linux_profile_ssh_key_key_data" {
  type        = string
  description = "The SSH key data to use for the Linux profile. Defaults to null."
  sensitive   = true
  default     = null
}

variable "maintenance_window" {
  description = "A map of maintenance window configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "azure_active_directory_role_based_access_control" {
  description = "A map of Azure Active Directory role-based access control configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "service_principal" {
  type        = map(string)
  description = "A map of service principal configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "windows_profile" {
  type        = map(string)
  description = "A map of Windows profile configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "api_server_access_profile" {
  type        = map(string)
  description = "A map of API server access profile configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "aci_connector_linux" {
  type        = map(string)
  description = "A map of ACI connector Linux configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "edge_zone" {
  type        = string
  description = "Specifies the Extended Zone (formerly called Edge Zone) within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created."
  default     = null
}

variable "http_application_routing_enabled" {
  type        = bool
  description = "Should HTTP application routing be enabled for the Kubernetes Cluster? Defaults to null."
  default     = null
}

variable "image_cleaner_enabled" {
  type        = bool
  description = "Should image cleaner be enabled for the Kubernetes Cluster? Defaults to null."
  default     = null
}

variable "image_cleaner_interval_hours" {
  type        = number
  description = "The interval in hours at which the image cleaner should run. Defaults to 48."
  default     = 48
}

variable "local_account_disabled" {
  type        = bool
  description = "Should local accounts be disabled for the Kubernetes Cluster? Defaults to null."
  default     = null
}

variable "oidc_issuer_enabled" {
  type        = bool
  description = "Should OIDC issuer be enabled for the Kubernetes Cluster? Defaults to null."
  default     = null
}

variable "workload_identity_enabled" {
  type        = bool
  description = "Should workload identity be enabled for the Kubernetes Cluster? Defaults to false."
  default     = false
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Should public network access be enabled for the Kubernetes Cluster? Defaults to true."
  default     = true
}

variable "run_command_enabled" {
  type        = bool
  description = "Should run command be enabled for the Kubernetes Cluster? Defaults to true."
  default     = true
}

variable "confidential_computing" {
  type        = map(string)
  description = "A map of confidential computing configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "monitor_metrics" {
  type        = map(string)
  description = "A map of monitor metrics configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "node_network_profile" {
  type        = map(string)
  description = "A map of node network profile configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "key_management_service" {
  type        = map(string)
  description = "A map of key management service configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "key_vault_secrets_provider" {
  type        = map(string)
  description = "A map of key vault secrets provider configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "ingress_application_gateway" {
  type        = map(string)
  description = "A map of ingress application gateway configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "storage_profile" {
  type        = map(string)
  description = "A map of storage profile configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "web_app_routing" {
  type        = map(string)
  description = "A map of web app routing configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "workload_autoscaler_profile" {
  type        = map(string)
  description = "A map of workload autoscaler profile configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "http_proxy_config" {
  type        = map(string)
  description = "A map of HTTP proxy configurations for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "kubernetes_version" {
  type        = string
  description = "The version of Kubernetes to use for the Kubernetes Cluster. Defaults to null."
  default     = null
}

variable "open_service_mesh_enabled" {
  type        = bool
  description = "Should open service mesh be enabled for the Kubernetes Cluster? Defaults to null."
  default     = null
}

variable "microsoft_defender_log_analytics_workspace_id" {
  type        = string
  description = "The ID of the log analytics workspace to use for Microsoft Defender. Defaults to null."
  default     = null
}

variable "oms_agent_log_analytics_workspace_id" {
  type        = string
  description = "The ID of the log analytics workspace to use for the OMS agent. Defaults to null."
  default     = null
}