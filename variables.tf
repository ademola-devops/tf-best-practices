# to write variables.tf i need to go to the tf documentation - https://developer.hashicorp.com/terraform/language/values/variables

variable "environment" {
  type        = string
  description = "Deployment environment name"
  default     = "dev"
}

variable "db_password" {
  type        = string
  description = "The master password for our database"
  sensitive   = true # CRITICAL: This tells Terraform never to print this value to the screen
}