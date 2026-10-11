variable "database_db_system_shapes_lookup" {
  description = <<EOT
Map of database_db_system_shapes_lookup, attributes below
Required:
    - compartment_id
Optional:
    - availability_domain
    - shape_attribute
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id      = string
    availability_domain = optional(string)
    shape_attribute     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

