output "resource_group_name" {
  value = try(
    resource.azurerm_resource_group.dns[0].name,
    data.azurerm_resource_group.dns[0].name,
  )
}

output "name_servers_for_delegation" {
  value = {
    name    = var.dns_zone_name
    records = azurerm_dns_zone.zone[0].name_servers
    ttl     = 3600
    tags    = "use a var or local for tags"
  }
}