variable "express_route_circuits" {
  description = <<EOT
Map of express_route_circuits, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku (block):
        - family (required)
        - tier (required)
Optional:
    - allow_classic_operations
    - authorization_key
    - authorization_key_key_vault_id (alternative to authorization_key - read from Key Vault instead)
    - authorization_key_key_vault_secret_name (alternative to authorization_key - read from Key Vault instead)
    - bandwidth_in_gbps
    - bandwidth_in_mbps
    - express_route_port_id
    - peering_location
    - rate_limiting_enabled
    - service_provider_name
    - tags
EOT

  type = map(object({
    location                                = string
    name                                    = string
    resource_group_name                     = string
    allow_classic_operations                = optional(bool)
    authorization_key                       = optional(string)
    authorization_key_key_vault_id          = optional(string)
    authorization_key_key_vault_secret_name = optional(string)
    bandwidth_in_gbps                       = optional(number)
    bandwidth_in_mbps                       = optional(number)
    express_route_port_id                   = optional(string)
    peering_location                        = optional(string)
    rate_limiting_enabled                   = optional(bool)
    service_provider_name                   = optional(string)
    tags                                    = optional(map(string))
    sku = object({
      family = string
      tier   = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.express_route_circuits : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_circuits : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_circuits : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_circuits : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

