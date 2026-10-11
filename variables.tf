variable "ec2_coip_pool_lookup" {
  description = <<EOT
Map of ec2_coip_pool_lookup, attributes below
Optional:
    - local_gateway_route_table_id
    - pool_id
    - region
    - tags
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    local_gateway_route_table_id = optional(string)
    pool_id                      = optional(string)
    region                       = optional(string)
    tags                         = optional(map(string))
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

