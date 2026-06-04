resource "azurerm_resource_group" "rg" {
  for_each = toset(var.rg_names)

  name     = each.value
  location = var.location
}
