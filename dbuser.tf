resource "mongodbatlas_database_user" "admin" {
  username           = var.mongo_database_admin_user
  password           = var.mongo_database_admin_password
  project_id         = data.mongodbatlas_project.main.id
  auth_database_name = "admin"

  roles {
    role_name     = "dbAdmin"
    database_name = "admin"
  }
}

resource "mongodbatlas_database_user" "application" {
  username           = var.mongo_database_app_user
  password           = var.mongo_database_app_password
  project_id         = data.mongodbatlas_project.main.id
  auth_database_name = "admin"

  roles {
    role_name     = "readWrite"
    database_name = var.mongo_database_name
  }

  # mongodbatlas_database_user resource type includes repeatable nested blocks of roles,
  # which represent separate objects that are embedded within the containing object.
  # We want to construct repeatable nested blocks while keeping them embedded within
  # a single resource. One user, but multiple roles assigned to it.
  dynamic "roles" {
    for_each = var.mongo_database_collections
    content {
      role_name     = "readWrite"
      database_name = "homelab_${roles.value}"
    }
  }
}
