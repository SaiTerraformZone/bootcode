resource "google_storage_bucket" "state-bucket" {
  name          = var.state_bucket
  force_destroy = false
  location      = "us-central1"
  storage_class = "STANDARD"
  project       = var.project
  versioning {
    enabled = true
  }
}