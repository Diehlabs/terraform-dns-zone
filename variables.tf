variable "location" {
  type        = string
  description = "Location for the resource group, required if creating a resource group"
  default     = null

}
variable "tags" {
  default = {}
  # type = object({
  #   # location    = string,
  #   environment = string,
  #   git_repo    = string,

  # })
  description = "Standard tags to apply to resources"
}

variable "tags_extra" {
  type        = any
  description = "Extra tags to apply to resources"
  default     = {}
}

variable "dns_zone_name" {
  type        = string
  description = <<EOT
The zone name to create.
For a primary zone use the full domain name i.e. verituityplatform.com
For a sub zone use just the sub domain name i.e. dev for dev.verituityplatform.com
EOT
}

variable "existing_resource_group_name" {
  type        = string
  description = "(Optional) The existing resource group name that the DNS zone resides in. Will negate var.resource_group_name."
  default     = null
}
