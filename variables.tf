variable "group_roles" {
  description = <<EOT
Map of group_roles, attributes below
Required:
    - group_id
    - role
Optional:
    - api
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    group_id = string
    role     = string
    api      = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

