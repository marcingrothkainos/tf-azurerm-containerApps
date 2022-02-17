# Azure Container Apps service

Actual Code provide Azure Container App deployment using Arm Template and Terraform.

## Requirements

* Terraform

## Usage

Please see the [example](example) folder.

Example code deploys Kube Environemnt service and Container App service to Azure with simple Nginx container from public docker repo,
for using private containers credentials need to be provided

## Related Documents

* Container Apps Arm Template specification [container apps](https://docs.microsoft.com/en-us/azure/container-apps/azure-resource-manager-api-spec)

* Terraform Arm Template deployment [Terraform Arm Template](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/template_deployment)

