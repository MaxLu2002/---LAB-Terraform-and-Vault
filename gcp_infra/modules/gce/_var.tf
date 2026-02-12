variable "labels" {
  type = map(string)
}

variable "gce_type" {
  type = string
}

variable "gce_name" {
  type = string
}

variable "gce_region" {
  type = string
}

variable "gce_zone" {
  type = string
}

variable "gce_image" {
  type = string
}

variable "gce_machine_type" {
  type = string
}

variable "gce_subnet" {
  type = string
}

variable "os_login" {
  type = bool
}