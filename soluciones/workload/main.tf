terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.103.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "create-vm" {
  source = "github.com/stemdo-labs/terraform-exercises-icasado01-1/soluciones/modulo-weekly-exercise/modules/create-vm"
  resource_group_name = var.resource_group_name
  location = var.location
  virtual_machine = var.virtual_machine
  subnets = var.subnets
  vnet_name = var.vnet_name
  vnet_address_space = var.vnet_address_space
  owner_tag = var.owner_tag
  environment_tag = var.environment_tag
  load_balancer_name = var.load_balancer_name
}
