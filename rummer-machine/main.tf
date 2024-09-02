resource "google_compute_instance" "runner-machine" {
  for_each     = var.runner-machine
  name         = each.value.name
  machine_type = each.value.machine_type
  zone         = each.value.zone
  project      = each.value.project

  boot_disk {
    initialize_params {
      image = each.value.image
      labels = {
        my_label = each.value.tags
      }
    }
  }

  network_interface {
    network = "default"
  }

  metadata_startup_script = file("${path.module}/startup.sh")

  service_account {
    email  = each.value.service_account_email
    scopes = ["cloud-platform"]
  }
}