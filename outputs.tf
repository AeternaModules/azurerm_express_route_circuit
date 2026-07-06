output "express_route_circuits" {
  description = "All express_route_circuit resources"
  value       = azurerm_express_route_circuit.express_route_circuits
  sensitive   = true
}
output "express_route_circuits_allow_classic_operations" {
  description = "List of allow_classic_operations values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.allow_classic_operations]
}
output "express_route_circuits_authorization_key" {
  description = "List of authorization_key values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.authorization_key]
  sensitive   = true
}
output "express_route_circuits_bandwidth_in_gbps" {
  description = "List of bandwidth_in_gbps values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.bandwidth_in_gbps]
}
output "express_route_circuits_bandwidth_in_mbps" {
  description = "List of bandwidth_in_mbps values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.bandwidth_in_mbps]
}
output "express_route_circuits_express_route_port_id" {
  description = "List of express_route_port_id values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.express_route_port_id]
}
output "express_route_circuits_location" {
  description = "List of location values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.location]
}
output "express_route_circuits_name" {
  description = "List of name values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.name]
}
output "express_route_circuits_peering_location" {
  description = "List of peering_location values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.peering_location]
}
output "express_route_circuits_rate_limiting_enabled" {
  description = "List of rate_limiting_enabled values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.rate_limiting_enabled]
}
output "express_route_circuits_resource_group_name" {
  description = "List of resource_group_name values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.resource_group_name]
}
output "express_route_circuits_service_key" {
  description = "List of service_key values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.service_key]
  sensitive   = true
}
output "express_route_circuits_service_provider_name" {
  description = "List of service_provider_name values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.service_provider_name]
}
output "express_route_circuits_service_provider_provisioning_state" {
  description = "List of service_provider_provisioning_state values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.service_provider_provisioning_state]
}
output "express_route_circuits_sku" {
  description = "List of sku values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.sku]
}
output "express_route_circuits_tags" {
  description = "List of tags values across all express_route_circuits"
  value       = [for k, v in azurerm_express_route_circuit.express_route_circuits : v.tags]
}

