# ----------------- vault ---------------- #
variable "vault_address" {
  type = string
  default = "http://127.0.0.1:8200"
}

variable "sa_name" {
  type = string
  default = "default-gcp-sa-by-vault"
}

variable "project_id" {
  type = string
}

# ----------------- Common Variables ---------------- #
variable "region" {
  type = string
}
variable "labels" {
  type        = map(string)
  description = "Labels for resources"
}
# ----------------- VPC Variables ---------------- #
variable "vpc_region" {
  type        = string
  description = "GCP region for VPC resources"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

# ----------------- GCE Variables ---------------- #
variable "gce_name" {
  type    = string
}

variable "gce_image" {
  type    = string
}

variable "gce_machine_type" {
  type = string
}

variable "gce_zone" {
  type    = string
}

variable "os_login" {
  type    = bool
  default = false
}
