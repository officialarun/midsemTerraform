variable "rg_name" {
  description = "Resource Group Name"
  default     = "nginx-rg"
}

variable "location" {
  description = "Azure region"
  default     = "East US"
}

variable "prefix" {
  description = "Prefix for resources"
  default     = "nginxapp"
}
