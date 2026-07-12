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
    allow_classic_operations                = optional(bool) # Default: false
    authorization_key                       = optional(string)
    authorization_key_key_vault_id          = optional(string)
    authorization_key_key_vault_secret_name = optional(string)
    bandwidth_in_gbps                       = optional(number)
    bandwidth_in_mbps                       = optional(number)
    express_route_port_id                   = optional(string)
    peering_location                        = optional(string)
    rate_limiting_enabled                   = optional(bool) # Default: false
    service_provider_name                   = optional(string)
    tags                                    = optional(map(string))
    sku = object({
      family = string
      tier   = string
    })
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_express_route_circuit's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: sku.tier
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: sku.family
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: express_route_port_id
  #   source:    [from expressrouteports.ValidateExpressRoutePortID] !ok
  # path: express_route_port_id
  #   source:    [from expressrouteports.ValidateExpressRoutePortID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

