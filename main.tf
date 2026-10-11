resource "databricks_group_role" "group_roles" {
  for_each = var.group_roles

  group_id = each.value.group_id
  role     = each.value.role
  api      = each.value.api

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

