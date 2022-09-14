# The access list grants access from IPs or CIDRs to clusters within the project.
resource "mongodbatlas_project_ip_access_list" "main" {
  project_id = data.mongodbatlas_project.main.id
  cidr_block = var.atlas_cluster_allow_inbound_from_cidr
  comment    = "Terraform managed CIDR block to allow ingress to the cluster"
}
