# [Create a simple Azure [MODULE_NAME]]

This example consists of a simple terraform deployment to create a simple Azure [MODULE_NAME].

- Terraform deployment: script `main.tf`

You can use the following table to make sure you are aware of all the ones you need:

## RUN

Then simply run it in local shell.

### Deploy

```sh
# set service principal
$ export ARM_CLIENT_ID="service-principal-client-id"
$ export ARM_CLIENT_SECRET="service-principal-client-secret"
$ export ARM_SUBSCRIPTION_ID="subscription-id"
$ export ARM_TENANT_ID="tenant-id"

$ terraform init
$ terraform plan -out tfplan.apply
$ terraform apply -auto-approve tfplan.apply
```

### Destroy

```sh
# set service principal
$ export ARM_CLIENT_ID="service-principal-client-id"
$ export ARM_CLIENT_SECRET="service-principal-client-secret"
$ export ARM_SUBSCRIPTION_ID="subscription-id"
$ export ARM_TENANT_ID="tenant-id"

$ terraform init
$ terraform plan -destroy -out tfplan.destroy
$ terraform apply -input=false -auto-approve tfplan.destroy