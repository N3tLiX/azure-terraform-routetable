# azure-terraform-[MODULE_NAME]

## Create a simple [MODULE_NAME] in Azure

This Terraform module deploys a [MODULE_NAME] in Azure .

The module [MODULE_DESCRIPTION].
You could use https://github.com/n3tlix/azure-terraform-network to assign network security group and routing tables to the subnets.

## Usage in Terraform 0.13
```hcl
module "[MODULE_NAME]" {
  source              = "azure-terraform-[MODULE_NAME]"
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