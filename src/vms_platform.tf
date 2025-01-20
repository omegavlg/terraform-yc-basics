variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family of the image to use for the VM."
}

variable "vm_web_image_platform" {
  type        = string
  default     = "standard-v1"
  description = "Platform for the VM instance."
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Whether the VM is preemptible."
}
/*
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name of the VM instance."
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "Number of CPU cores for the VM."
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Amount of RAM in GB for the VM."
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 5
  description = "Core fraction for the VM instance."
}

variable "vm_web_vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILGDJdtFM56kwGfTh9tNGYqnI7TtB33G5soUvc6emCpU dnd@dnd-VirtualBox"
  description = "ssh-keygen -t ed25519"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Name of the DB VM."
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "Number of CPU cores for the DB VM."
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "Amount of RAM in GB for the DB VM."
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "Core fraction for the DB VM."
}
*/

variable "project_name" {
  description = "netology"
  type        = string
  default     = "netology"
}

variable "environment" {
  description = "develop"
  type        = string
  default     = "develop"
}

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  description = "Resources VM"
}

variable "metadata" {
  type        = map(string)
  description = "Metadata VM"
}