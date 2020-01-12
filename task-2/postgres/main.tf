locals {
  onprem = [
    "212.154.55.130",
    "78.191.2.231"]
}


resource "google_sql_database_instance" "master" {
  name = "master-instance"
  database_version = "POSTGRES_11"
  region = "europe-west6"
  project = "core-depth-264814"


  settings {
    tier = "db-f1-micro"
    disk_autoresize = "false"
    disk_size = 10
    disk_type = "PD_HDD"


    ip_configuration {
      require_ssl = "false"
      ipv4_enabled = "true"
      dynamic "authorized_networks" {
        for_each = local.onprem
        iterator = onprem

        content {
          name = "onprem-${onprem.key}"
          value = onprem.value
        }
      }
    }
  }
}

resource "google_sql_user" "postgres" {
  name = "postgres"
  instance = google_sql_database_instance.master.name
  password = "b8dX46JRHwgPAPq4"
  project = "core-depth-264814"

}

