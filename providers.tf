terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=1.5"
}

provider "yandex" {
  # token     = var.token
  cloud_id                 = "b1glskia0dbos36k28i8"
  folder_id                = "b1g6c8c6gi8ud4pc3deq"
  zone                     = var.default_zone
  service_account_key_file = file("~/.authorized_key.json")
}
