resource "azurerm_databricks_workspace" "ADB" {
  name                = var.name_databrick
  resource_group_name = data.azurerm_resource_group.RG.name
  location            = var.location
  sku                 = "standard"

  tags = {
    Environment = "Production"
  }
}
