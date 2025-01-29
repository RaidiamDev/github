terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.5.0"
    }
  }
}


provider "github" {
  owner = "RaidiamDev"
  app_auth {}
}


resource "github_repository" "example" {
  name                 = "example"
  description          = "My awesome codebase"
  vulnerability_alerts = true
  visibility           = "public"
}

resource "github_repository" "github" {
  name          = "github"
  description   = "Github provisioner repo"
  has_downloads = true
  has_issues    = true
  has_projects  = true
  vulnerability_alerts        = true

  visibility = "public"
}
