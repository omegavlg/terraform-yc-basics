resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

data "yandex_compute_image" "ubuntu" {
  family =  var.vm_web_image_family
}

resource "yandex_compute_instance" "platform" {
##  name        = var.vm_web_name
  name        = local.vm_web_name
  platform_id = var.vm_web_image_platform
  
  resources {
    cores         = var.vm_web_cores
    memory        = var.vm_web_memory
    core_fraction = var.vm_web_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }

  scheduling_policy {
    preemptible = var.vm_web_preemptible
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vm_web_vms_ssh_root_key}"
  }
}

### vm_db

resource "yandex_vpc_subnet" "develop_db" {
  name           = var.vpc_db_name
  zone           = var.default_db_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_db_cidr
}

resource "yandex_compute_instance" "platform_db" {
  ##name        = var.vm_db_name
  name        = local.vm_db_name
  platform_id = var.vm_web_image_platform
  zone = var.default_db_zone
  
  resources {
    cores         = var.vm_db_cores
    memory        = var.vm_db_memory
    core_fraction = var.vm_db_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }

  scheduling_policy {
    preemptible = var.vm_web_preemptible
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop_db.id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vm_web_vms_ssh_root_key}"
  }
}