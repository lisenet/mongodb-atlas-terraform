# Free tier cluster creation (M0) is supported.
# See limitations: https://www.mongodb.com/docs/atlas/reference/free-shared-limitations/

resource "mongodbatlas_cluster" "main" {
  project_id = data.mongodbatlas_project.main.id
  name       = var.local_prefix

  mongo_db_major_version      = var.atlas_cluster_version
  # Provider settings block
  provider_name               = var.atlas_cluster_provider_name
  backing_provider_name       = var.atlas_cluster_backing_provider
  provider_region_name        = var.atlas_cluster_region
  provider_instance_size_name = var.atlas_cluster_size_name

  lifecycle {
    prevent_destroy = true
  }
}
