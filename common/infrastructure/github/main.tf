terraform {
    cloud {
    organization = "ludicrum"

    workspaces {
      name = "ludicrum_github"
    }
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.ludicrum_token
}
