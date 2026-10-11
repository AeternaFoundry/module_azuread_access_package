variable "access_packages" {
  description = <<EOT
Map of access_packages, attributes below
Required:
    - catalog_id
    - description
    - display_name
Optional:
    - hidden
EOT

  type = map(object({
    catalog_id   = string
    description  = string
    display_name = string
    hidden       = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.access_packages : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.catalog_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_packages : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_packages : (
        length(v.description) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

