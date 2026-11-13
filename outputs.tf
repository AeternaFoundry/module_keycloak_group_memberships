output "group_memberships_id" {
  description = "Map of id values across all group_memberships, keyed the same as var.group_memberships"
  value       = { for k, v in keycloak_group_memberships.group_memberships : k => v.id }
}
output "group_memberships_group_id" {
  description = "Map of group_id values across all group_memberships, keyed the same as var.group_memberships"
  value       = { for k, v in keycloak_group_memberships.group_memberships : k => v.group_id }
}
output "group_memberships_members" {
  description = "Map of members values across all group_memberships, keyed the same as var.group_memberships"
  value       = { for k, v in keycloak_group_memberships.group_memberships : k => v.members }
}
output "group_memberships_realm_id" {
  description = "Map of realm_id values across all group_memberships, keyed the same as var.group_memberships"
  value       = { for k, v in keycloak_group_memberships.group_memberships : k => v.realm_id }
}

