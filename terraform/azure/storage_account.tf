resource "azurerm_storage_account" "example_storage_account" {
  name                     = "examplestorageaccount"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  location                 = azurerm_resource_group.example_resource_group_for_storage.location
  resource_group_name      = azurerm_resource_group.example_resource_group_for_storage.name
}

resource "azurerm_resource_group" "example_resource_group_for_storage" {
  name     = "example-resource-group-for-storage"
  location = "West US 2"
}
