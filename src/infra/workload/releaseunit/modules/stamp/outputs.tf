output "location" {
  value = var.location
}

output "resource_group_name" {
  value = azurerm_resource_group.stamp.name
}

# Name of the per-stamp Azure Key Vault instance
output "key_vault_name" {
  value = azurerm_key_vault.stamp.name
}

# Ingress Controller PublicIP Address
output "aks_ingress_publicip_address" {
  value = azurerm_public_ip.aks_ingress.ip_address
}

# Ingress Controller PublicIP FQDN
output "aks_ingress_fqdn" {
  value = azurerm_public_ip.aks_ingress.fqdn
}

# AKS Cluster (Azure Resource Manager) ResourceId
output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.stamp.id
}

# Name of the AKS Cluster
output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.stamp.name
}

# Private Endpoint Subnet Address Range
output "privatendpoints_addressrange" {
  value = azurerm_subnet.private_endpoints.address_prefix
}

# Name of the public Storage Account
output "public_storage_account_name" {
  value = azurerm_storage_account.public.name
}

# Hostname of the static website storage endpoint
output "public_storage_static_web_host" {
  value = azurerm_storage_account.public.primary_web_host
}

output "app_insights_id" {
  value = data.azurerm_application_insights.stamp.id
}

output "app_insights_name" {
  value = data.azurerm_application_insights.stamp.name
}

output "eventhub_id" {
  value = azurerm_eventhub_namespace.stamp.id
}
