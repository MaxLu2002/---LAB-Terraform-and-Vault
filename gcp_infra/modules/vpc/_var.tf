variable "vpc_region" {
  type        = string
  description = "GCP region for VPC resources"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "labels" {
  type        = map(string)
  description = "Labels for resources"
}
