
# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "maurojr-luizalabs"
  region  = "us-central1"
}
# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "mj-ll-terraform"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}