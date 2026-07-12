output "express_route_circuits_id" {
  description = "Map of id values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.id }
}
output "express_route_circuits_allow_classic_operations" {
  description = "Map of allow_classic_operations values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.allow_classic_operations }
}
output "express_route_circuits_authorization_key" {
  description = "Map of authorization_key values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.authorization_key }
  sensitive   = true
}
output "express_route_circuits_bandwidth_in_gbps" {
  description = "Map of bandwidth_in_gbps values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.bandwidth_in_gbps }
}
output "express_route_circuits_bandwidth_in_mbps" {
  description = "Map of bandwidth_in_mbps values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.bandwidth_in_mbps }
}
output "express_route_circuits_express_route_port_id" {
  description = "Map of express_route_port_id values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.express_route_port_id }
}
output "express_route_circuits_location" {
  description = "Map of location values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.location }
}
output "express_route_circuits_name" {
  description = "Map of name values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.name }
}
output "express_route_circuits_peering_location" {
  description = "Map of peering_location values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.peering_location }
}
output "express_route_circuits_rate_limiting_enabled" {
  description = "Map of rate_limiting_enabled values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.rate_limiting_enabled }
}
output "express_route_circuits_resource_group_name" {
  description = "Map of resource_group_name values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.resource_group_name }
}
output "express_route_circuits_service_key" {
  description = "Map of service_key values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.service_key }
  sensitive   = true
}
output "express_route_circuits_service_provider_name" {
  description = "Map of service_provider_name values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.service_provider_name }
}
output "express_route_circuits_service_provider_provisioning_state" {
  description = "Map of service_provider_provisioning_state values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.service_provider_provisioning_state }
}
output "express_route_circuits_sku" {
  description = "Map of sku values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.sku }
}
output "express_route_circuits_tags" {
  description = "Map of tags values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.tags }
}

