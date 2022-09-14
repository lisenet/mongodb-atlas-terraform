variable "aws_region" {
  description = "AWS region to deploy resources to"
  type        = string
  default     = "eu-west-2"
}

variable "aws_profile" {
  description = "AWS profile to use to provision resources"
  type        = string
  default     = "terraform_homelab"
}

variable "local_prefix" {
  description = "Prefix to use for resources"
  type        = string
  default     = "kubernetes-homelab"
}

#
# Mongo Atlas API keys
#

variable "mongo_atlas_api_public_key" {
  description = "Mongo Atlas public API key"
  type        = string
}

variable "mongo_atlas_api_private_key" {
  description = "Mongo Atlas private API key"
  type        = string
}

#
# Mongo Atlas shared cluster parameters
#

variable "atlas_cluster_provider_name" {
  description = "Cloud provider for this resource"
  type        = string
  default     = "TENANT"
}

variable "atlas_cluster_backing_provider" {
  description = "Cloud provider for this resource"
  type        = string
  default     = "AWS"
}

# See https://www.mongodb.com/docs/atlas/reference/amazon-aws/
variable "atlas_cluster_region" {
  description = "Mongo Atlas region name (physical location of your MongoDB cluster)"
  type        = string
  default     = "EU_WEST_1"
}

variable "atlas_cluster_version" {
  description = "Version of the MongoDB cluster to deploy"
  type        = string
  default     = "5.0"
}

variable "atlas_cluster_size_name" {
  description = "Type of the MongoDB cluster to deploy"
  type        = string
  default     = "M0"
}

variable "atlas_cluster_cidr" {
  description = "Atlas CIDR block, must be at least a /24 and at most a /21"
  type        = string
  default     = "192.168.248.0/24"
}

variable "atlas_cluster_allow_inbound_from_cidr" {
  description = "CIDR block to allow inbound traffic to the cluster (change to your IP)"
  type        = string
  default     = "0.0.0.0/0"
}

#
# Mongo Atlas database parameters
#

variable "mongo_database_name" {
  description = "Mongo database name"
  type        = string
  default     = "homelab"
}

variable "mongo_database_admin_user" {
  description = "Mongo database admin username"
  type        = string
  default     = "admin"
}

variable "mongo_database_admin_password" {
  description = "Mongo database admin password"
  type        = string
}

variable "mongo_database_app_user" {
  description = "Mongo database application username"
  type        = string
  default     = "app_user"
}

variable "mongo_database_app_password" {
  description = "Mongo database application user password"
  type        = string
}

variable "mongo_database_collections" {
  description = "Mongo database collections to use to generate user role assignments"
  type        = set(string)
  default     = ["demo"]
}
