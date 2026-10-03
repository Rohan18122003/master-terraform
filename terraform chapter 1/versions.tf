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
  project = "project-a763f680-0ba6-4d7c-b28"
  region = "us-central-1"
}