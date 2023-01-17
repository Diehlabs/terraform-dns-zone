locals {
  tags = merge(
    var.tags,
    var.tags_extra,
  )
}

# -----------------------------------------------------------------------------
# Create new RG if var existing_resource_group_name is not specified.
# -----------------------------------------------------------------------------
resource "azurerm_resource_group" "dns" {
  count    = var.existing_resource_group_name == null ? 1 : 0
  name     = format("dns-rg-%s", replace(var.dns_zone_name, ".", "-"))
  location = var.location
  tags     = local.tags
}

# -----------------------------------------------------------------------------
# Look up existing RG if var existing_resource_group_name is not specified.
# -----------------------------------------------------------------------------
data "azurerm_resource_group" "dns" {
  count = var.existing_resource_group_name == null ? 0 : 1
  name  = var.existing_resource_group_name
}

# -----------------------------------------------------------------------------
# Create a regular zone if existing_resource_group_name is NOT specified.
# -----------------------------------------------------------------------------
resource "azurerm_dns_zone" "zone" {
  count               = 1 # setting to 1 for now so we don't have to refactor states - code has been modified already to where this should always be 1 # var.dns_zone_parent_name == null ? 1 : 0
  resource_group_name = var.existing_resource_group_name == null ? azurerm_resource_group.dns[0].name : data.azurerm_resource_group.dns[0].name
  name                = var.dns_zone_name
  tags                = local.tags
}
