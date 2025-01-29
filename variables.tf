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
  default = null
}

variable "automatic_channel_upgrade" {
  type        = string
  description = "The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`."
  default     = null
}

variable "disk_encryption_set_id" {
  type = string

  description = <<-EOT
      The ID of the Disk Encryption Set which should be used for the Nodes and Volumes.
      
      More information can be found in the documentation [here](https://docs.microsoft.com/en-us/azure/aks/azure-disk-customer-managed-keys).
      EOT

  default = null
}

variable "node_resource_group" {
  type        = string
  description = "The name of the Resource Group where the Kubernetes Nodes should exist. Changing this forces a new resource to be created."
  default     = null
}

variable "private_cluster_enabled" {
  default = false
}

variable "private_dns_zone_id" {
  default = null
}

variable "private_cluster_public_fqdn_enabled" {
  default = false
}

variable "sku_tier" {
  type        = string
  description = "The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free and Paid (which includes the Uptime SLA). Defaults to Free."
  default     = "Free"
}

variable "azure_policy_enabled" {
  default = null
}

variable "role_based_access_control_enabled" {
  default = true
}

variable "default_node_pool_name" {
  type        = string
  description = "The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created."
}

variable "default_node_pool_vm_size" {
  type = string
}

variable "default_node_pool_capacity_reservation_group_id" {
  default = null
}

variable "default_node_pool_custom_ca_trust_enabled" {
  default = false
}

variable "default_node_pool_enable_auto_scaling" {
  type        = bool
  description = "Should the Kubernetes Auto Scaler be enabled for this Node Pool? Defaults to false."
  default     = false
}

variable "default_node_pool_enable_host_encryption" {
  default = false
}

variable "default_node_pool_enable_node_public_ip" {
  default = false
}

variable "default_node_pool_host_group_id" {
  default = null
}

variable "default_node_pool_fips_enabled" {
  default = null
}

variable "default_node_pool_kubelet_disk_type" {
  default = null
}

variable "default_node_pool_max_pods" {
  type        = number
  description = "The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
  default     = null
}

variable "default_node_pool_message_of_the_day" {
  default = null
}

variable "default_node_pool_node_public_ip_prefix_id" {
  default = null
}

variable "default_node_pool_node_labels" {
  default = null
}

variable "default_node_pool_node_taints" {
  default = null
}

variable "default_node_pool_only_critical_addons_enabled" {
  default = null
}

variable "default_node_pool_orchestrator_version" {
  default = null
}

variable "default_node_pool_os_disk_size_gb" {
  type        = number
  description = "The size of the OS Disk which should be used for each agent in the Node Pool. Changing this forces a new resource to be created."
  default     = null
}

variable "default_node_pool_os_disk_type" {
  default = "Managed"
}

variable "default_node_pool_os_sku" {
  default = null
}

variable "default_node_pool_pod_subnet_id" {
  default = null
}

variable "default_node_pool_proximity_placement_group_id" {
  default = null
}

variable "default_node_pool_scale_down_mode" {
  default = null
}

variable "default_node_pool_type" {
  default = "VirtualMachineScaleSets"
}

variable "default_node_pool_tags" {
  default = null
}

variable "default_node_pool_ultra_ssd_enabled" {
  default = false
}

variable "default_node_pool_subnet_id" {
  default = null
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
  default = null
}

variable "default_node_pool_workload_runtime" {
  default = null
}

variable "default_node_pool_zones" {
  default = null
}

variable "default_node_pool_kubelet_config" {
  default = null
}


variable "default_node_pool_linux_os_config" {
  default = null
}

variable "default_node_pool_upgrade_settings_max_surge" {
  default = null
}

variable "network_profile" {
  default = null
}

variable "auto_scaler_profile" {
  default = null
}

variable "identity_type" {
  default = null
}

variable "identity_ids" {
  default = null
}

variable "kubelet_identity" {
  default = null
}

variable "client_id" {
  default = null
}

variable "object_id" {
  default = null
}

variable "user_assigned_identity_id" {
  default = null
}

variable "linux_profile" {
  default = null
}

variable "linux_profile_ssh_key_key_data" {
  sensitive = true
  default   = null
}

variable "maintenance_window" {
  default = null
}

variable "azure_active_directory_role_based_access_control" {
  default = null
}

variable "service_principal" {
  default = null
}

variable "windows_profile" {
  default = null
}

variable "api_server_access_profile" {
  default = null
}

variable "aci_connector_linux" {
  default = null
}

variable "edge_zone" {
  default = null
}

variable "http_application_routing_enabled" {
  default = null
}

variable "image_cleaner_enabled" {
  default = null
}

variable "image_cleaner_interval_hours" {
  default = 48
}

variable "local_account_disabled" {
  default = null
}

variable "oidc_issuer_enabled" {
  default = null
}

variable "workload_identity_enabled" {
  default = false
}

variable "public_network_access_enabled" {
  default = true
}

variable "run_command_enabled" {
  default = true
}

variable "confidential_computing" {
  default = null
}

variable "monitor_metrics" {
  default = null
}

variable "node_network_profile" {
  default = null
}

variable "key_management_service" {
  default = null
}

variable "key_vault_secrets_provider" {
  default = null
}

variable "ingress_application_gateway" {
  default = null
}

variable "storage_profile" {
  default = null
}

variable "web_app_routing" {
  default = null
}

variable "workload_autoscaler_profile" {
  default = null
}

variable "http_proxy_config" {
  default = null
}

variable "kubernetes_version" {
  default = null
}

variable "open_service_mesh_enabled" {
  default = null
}

variable "microsoft_defender_log_analytics_workspace_id" {
  default = null
}

variable "oms_agent_log_analytics_workspace_id" {
  default = null
}