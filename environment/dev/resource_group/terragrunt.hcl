include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/resource_group"
}

inputs = {
  resource_group_name = "myResourceGroup"
  location            = "East US"
}