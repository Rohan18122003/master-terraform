terraform { 
  required_version = ">=1.15.7"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">=5.33"
    }
  }

  backend "gcs" {
    bucket = "terraformbackendfile"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.gcp_project
  region = var.region1
}