data "azurerm_resource_group" "RG" {
  name = var.resource_group_name
}

resource "azurerm_databricks_workspace" "ADB" {
  name                = var.data_brick_name
  resource_group_name = data.azurerm_resource_group.RG.name
  location            = var.location
  sku                 = var.sku
}
