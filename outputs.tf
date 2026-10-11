output "group_memberships_id" {
  description = "Map of id values across all group_memberships, keyed the same as var.group_memberships except keys with no id are omitted"
  value       = { for k, v in keycloak_group_memberships.group_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_memberships_group_id" {
  description = "Map of group_id values across all group_memberships, keyed the same as var.group_memberships except keys with no group_id are omitted"
  value       = { for k, v in keycloak_group_memberships.group_memberships : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_memberships_members" {
  description = "Map of members values across all group_memberships, keyed the same as var.group_memberships except keys with no members are omitted"
  value       = { for k, v in keycloak_group_memberships.group_memberships : k => v.members if v.members != null && length(v.members) > 0 }
}
output "group_memberships_realm_id" {
  description = "Map of realm_id values across all group_memberships, keyed the same as var.group_memberships except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_group_memberships.group_memberships : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}

