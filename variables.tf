variable "prefix" {
  type        = string
  description = "Prefix for all resources"
}

variable "master_count" {
  type        = number
  description = "Number of control plane nodes"
  default     = 1
}

variable "node_count" {
  type        = number
  description = "Number of control plane nodes"
  default     = 1
}

variable "project_id" {
  type        = string
  description = "The project id to deploy to"
}

variable "region" {
  type        = string
  description = "The region to deploy the resources into"
}
