output "kubernetes_cluster_id" {
  value       = azurerm_kubernetes_cluster.kubernetes_cluster.id
  description = "The ID Kubernetes Managed Cluster."
}

output "kubernetes_cluster_name" {
  value       = azurerm_kubernetes_cluster.kubernetes_cluster.name
  description = "The name Kubernetes Managed Cluster."
}

output "kubernetes_cluster_fqdn" {
  value       = azurerm_kubernetes_cluster.kubernetes_cluster.fqdn
  description = "The FQDN of the Azure Kubernetes Managed Cluster."
}

output "key_vault_secrets_provider" {
  value = azurerm_kubernetes_cluster.kubernetes_cluster.key_vault_secrets_provider[0].secret_identity[0].object_id
}