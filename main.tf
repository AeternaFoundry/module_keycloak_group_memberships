resource "keycloak_group_memberships" "group_memberships" {
  for_each = var.group_memberships

  members  = each.value.members
  realm_id = each.value.realm_id
  group_id = each.value.group_id
}

