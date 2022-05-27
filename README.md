# azure-terraform-routetable

## Create a simple Route Table in Azure

This Terraform module deploys a Route Table in Azure .

The module creates a simple Azure Route Table.
You could use https://github.com/n3tlix/azure-terraform-network to assign network security group and routing tables to the subnets.

## Usage in Terraform 0.13
```hcl
data "azurerm_client_config" "this" {}

module "route_table" {
  source                        = " azure-terraform-routetable"
  name                          = "rt-example"
  resource_group_name           = "rg-example-route-table"
  location                      = "westeurope"
  disable_bgp_route_propagation = false
  routes = [
    {
      name                   = "default"
      address_prefix         = "0.0.0.0/0"
      next_hop_type          = "VirtualAppliance"
      next_hop_in_ip_address = "192.168.0.1"
    }
  ]
  subnets_to_associate = {}
}
```

### Configurations

- [Configure Terraform for Azure](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/terraform-install-configure)

### Native (Mac/Linux)

#### Prerequisites

- [Terraform **(~> 0.14.9")**](https://www.terraform.io/downloads.html)

## Authors

Originally created by [Patrick Hayo](http://github.com/adminph-de)

## License

[MIT](LICENSE)