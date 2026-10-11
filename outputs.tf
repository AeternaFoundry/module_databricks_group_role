output "group_roles_id" {
  description = "Map of id values across all group_roles, keyed the same as var.group_roles except keys with no id are omitted"
  value       = { for k, v in databricks_group_role.group_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_roles_api" {
  description = "Map of api values across all group_roles, keyed the same as var.group_roles except keys with no api are omitted"
  value       = { for k, v in databricks_group_role.group_roles : k => v.api if v.api != null && length(v.api) > 0 }
}
output "group_roles_group_id" {
  description = "Map of group_id values across all group_roles, keyed the same as var.group_roles except keys with no group_id are omitted"
  value       = { for k, v in databricks_group_role.group_roles : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_roles_provider_config" {
  description = "Map of provider_config values across all group_roles, keyed the same as var.group_roles except keys with no provider_config are omitted"
  value       = { for k, v in databricks_group_role.group_roles : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "group_roles_role" {
  description = "Map of role values across all group_roles, keyed the same as var.group_roles except keys with no role are omitted"
  value       = { for k, v in databricks_group_role.group_roles : k => v.role if v.role != null && length(v.role) > 0 }
}

