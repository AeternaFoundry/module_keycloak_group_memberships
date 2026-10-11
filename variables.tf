variable "group_memberships" {
  description = <<EOT
Map of group_memberships, attributes below
Required:
    - members
    - realm_id
Optional:
    - group_id
EOT

  type = map(object({
    members  = set(string)
    realm_id = string
    group_id = optional(string)
  }))
}

