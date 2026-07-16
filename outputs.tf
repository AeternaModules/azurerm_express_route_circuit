output "express_route_circuits_id" {
  description = "Map of id values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.id if v.id != null && length(v.id) > 0 }
}
output "express_route_circuits_allow_classic_operations" {
  description = "Map of allow_classic_operations values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.allow_classic_operations if v.allow_classic_operations != null }
}
output "express_route_circuits_authorization_key" {
  description = "Map of authorization_key values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.authorization_key if v.authorization_key != null && length(v.authorization_key) > 0 }
  sensitive   = true
}
output "express_route_circuits_bandwidth_in_gbps" {
  description = "Map of bandwidth_in_gbps values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.bandwidth_in_gbps if v.bandwidth_in_gbps != null }
}
output "express_route_circuits_bandwidth_in_mbps" {
  description = "Map of bandwidth_in_mbps values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.bandwidth_in_mbps if v.bandwidth_in_mbps != null }
}
output "express_route_circuits_express_route_port_id" {
  description = "Map of express_route_port_id values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.express_route_port_id if v.express_route_port_id != null && length(v.express_route_port_id) > 0 }
}
output "express_route_circuits_location" {
  description = "Map of location values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.location if v.location != null && length(v.location) > 0 }
}
output "express_route_circuits_name" {
  description = "Map of name values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.name if v.name != null && length(v.name) > 0 }
}
output "express_route_circuits_peering_location" {
  description = "Map of peering_location values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.peering_location if v.peering_location != null && length(v.peering_location) > 0 }
}
output "express_route_circuits_rate_limiting_enabled" {
  description = "Map of rate_limiting_enabled values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.rate_limiting_enabled if v.rate_limiting_enabled != null }
}
output "express_route_circuits_resource_group_name" {
  description = "Map of resource_group_name values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "express_route_circuits_service_key" {
  description = "Map of service_key values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.service_key if v.service_key != null && length(v.service_key) > 0 }
  sensitive   = true
}
output "express_route_circuits_service_provider_name" {
  description = "Map of service_provider_name values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.service_provider_name if v.service_provider_name != null && length(v.service_provider_name) > 0 }
}
output "express_route_circuits_service_provider_provisioning_state" {
  description = "Map of service_provider_provisioning_state values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.service_provider_provisioning_state if v.service_provider_provisioning_state != null && length(v.service_provider_provisioning_state) > 0 }
}
output "express_route_circuits_sku" {
  description = "Map of sku values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "express_route_circuits_tags" {
  description = "Map of tags values across all express_route_circuits, keyed the same as var.express_route_circuits"
  value       = { for k, v in azurerm_express_route_circuit.express_route_circuits : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

