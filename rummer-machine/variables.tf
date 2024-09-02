variable "runner-machine" {
  type = map(object({
    name                  = string
    machine_type          = string
    zone                  = string
    tags                  = string
    project               = string
    image                 = string
    service_account_email = string
  }))
}

variable "runner-sa" {
  type = map(object({
    account_id   = string
    display_name = string
    project      = string
  }))
}