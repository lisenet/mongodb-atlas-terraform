output "cluster_srv_address" {
  value       = mongodbatlas_cluster.main.srv_address
  description = "Cluster srv address created"
}

output "mongo_database_version" {
  value       = mongodbatlas_cluster.main.mongo_db_version
  description = "Database version"
}

locals {
  mongodb_server_without_uri = replace(mongodbatlas_cluster.main.srv_address, "mongodb+srv://", "")
}

output "mongo_compass_connection_string" {
  value       = "mongodb+srv://${var.mongo_database_app_user}:${var.mongo_database_app_password}@${local.mongodb_server_without_uri}"
  description = "Mongo Compass connection string"
  sensitive   = true
}
