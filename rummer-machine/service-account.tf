resource "google_service_account" "runner-sa" {
  for_each     = var.runner-sa
  account_id   = each.value.account_id
  display_name = each.value.display_name
  project      = each.value.project
}