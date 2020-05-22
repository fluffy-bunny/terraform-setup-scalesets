
terraform {
  backend "azurerm" {
    # Due to a limitation in backend objects, variables cannot be passed in.
    # Do not declare an access_key here. Instead, export the
    # ARM_ACCESS_KEY environment variable.

    storage_account_name  = "stterraformscalesets"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}
# Configure the Azure provider
provider "azurerm" {
 version = "=2.0.0" 
 features {
   
  }
}
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location_name
  tags = var.tags
}

data "azurerm_client_config" "current" {}
data "azurerm_subscription" "primary" {}