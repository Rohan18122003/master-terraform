variable "gcp_project" {
  description = "This is you gcp project ID"
  type = string
  default = "project-a763f680-0ba6-4d7c-b28"
}

variable "region1" {
  description = "This is your region where you have to create your resource"
  type = string
  default = "us-central1"
}

variable "zone" {
  description = "This is your zone where you have to create your resource"
  type = string
  default = "us-central1-b"
}

variable "machine_type" {
  description = "This is your region where you have to create your resource"
  type = string
  default = "e2-small"
}

variable "source_ranges" {
  description = "source range"
  type = set(string)
  default = ["0.0.0.0/0"]
}