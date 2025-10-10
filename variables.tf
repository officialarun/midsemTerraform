# -----------------------------
# General Variables
# -----------------------------
variable "env" {
  description = "Environment name (e.g., dev, test, prod)"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "eastasia"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "nginx-rg"
}

# -----------------------------
# Networking Variables
# -----------------------------
variable "vnet_address_space" {
  description = "Virtual network address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefixes" {
  description = "Subnet address prefixes"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

# -----------------------------
# Compute Variables
# -----------------------------
variable "vm_name" {
  description = "Virtual Machine name"
  type        = string
  default     = "nginx-vm"
}

variable "vm_size" {
  description = "Virtual Machine size"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_user" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
  default     = "Password123!"
}
