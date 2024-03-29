terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-mgmt-shared"
    storage_account_name = "cmcstfstates36419"
    container_name       = "tfstate"
    key                  = "github-governance.tfstate"
  }
}

provider "github" {
  owner = "CMCS-Norway"
}


