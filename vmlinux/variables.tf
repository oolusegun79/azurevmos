# Define the Azure variable
variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  type        = string
  default     = "East US 2"
}

variable "resource_group_name" {
  description = "The name of the Resource Group in which all resources in this example should be created."
  type        = string
  default     = "rg-firstdataproject"
}
