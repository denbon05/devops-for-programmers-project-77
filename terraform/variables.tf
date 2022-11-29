variable "do_token" {
  type      = string
  sensitive = true
}

variable "pvt_key" {
  type      = string
  sensitive = true
}

variable "region" {}

variable "app_port" {}

variable "domain_name" {}

variable "datadog_api_key" {
  sensitive = true
}

variable "datadog_app_key" {
  sensitive = true
}

variable "datadog_site" {
  sensitive = true
}
