# 参考：https://learn.microsoft.com/ja-jp/azure/virtual-machines/linux/quick-create-terraform?tabs=azure-cli

resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = random_pet.rg_name.id
}

