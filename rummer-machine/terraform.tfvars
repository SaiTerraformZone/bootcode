runner-sa = {
  sa1 = {
    account_id   = "runner-sa"
    display_name = "service account for runner machine"
    project      = "sb-state"
  }
}

runner-machine = {
  vm1 = {
    name                  = "runner-machine"
    machine_type          = "e2-micro"
    zone                  = "us-central1-a"
    tags                  = "runner-machine"
    image                 = "debian-cloud/debian-11"
    project               = "sb-state"
    service_account_email = "runner-sa@sb-state.iam.gserviceaccount.com"
  }
}