output "platform_instance" {
  value = {
    instance_name = yandex_compute_instance.platform.name
    external_ip   = yandex_compute_instance.platform.network_interface[0].nat_ip_address
    fqdn          = "${yandex_compute_instance.platform.name}.${var.vpc_name}.internal"
  }
}

output "platform_db_instance" {
  value = {
    instance_name = yandex_compute_instance.platform_db.name
    external_ip   = yandex_compute_instance.platform_db.network_interface[0].nat_ip_address
    fqdn          = "${yandex_compute_instance.platform_db.name}.${var.vpc_db_name}.internal"
  }
}