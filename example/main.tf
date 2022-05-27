terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}
provider "azurerm" {
  features {}
}

data "azurerm_client_config" "this" {}

resource "azurerm_resource_group" "this" {
  name     = "rg-example-route-table"
  location = "westeurope"
}

data "azurerm_resource_group" "this" {
  name = azurerm_resource_group.this.name
}

module "rt" {
  source                        = "github.com/N3tLiX/modules//rt"
  name                          = "rt-example"
  resource_group_name           = data.azurerm_resource_group.this.name
  location                      = data.azurerm_resource_group.this.location
  disable_bgp_route_propagation = false
  routes = [
    {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "192.168.0.1"
    }
  ]
  subnets_to_associate = {
    ("sn-example") = {
      subscription_id      = data.azurerm_client_config.this.subscription_id
      resource_group_name  = "rg-example-vnet"
      virtual_network_name = "vn-example"
    }
  }
}

output "route_table" {
  description = "Network deployment output."
  value       = module.route_table.this
}
