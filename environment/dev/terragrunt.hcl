locals {
  resource_group_name = "jjtfdemo-rg"
  location            = "Germany West Central"

  subscription_id = "eb1d6021-9f80-4613-b383-2bd8c4d31f09"
}

inputs = {
  resource_group_name = local.resource_group_name
  location           = local.location
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "azurerm" {
  subscription_id = "${local.subscription_id}"
  features {}
}
EOF
}

remote_state {
  backend = "azurerm"
    generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  config = {
    subscription_id      = local.subscription_id
    resource_group_name  = "jjinfra-rg"
    storage_account_name = "jjaztfstate"
    container_name       = "jjtfdemostate"
    key                  = "${path_relative_to_include()}/terraform.tfstate"
  }
}