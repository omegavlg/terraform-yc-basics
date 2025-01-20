###cloud vars

 variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default = "b1glskia0dbos36k28i8"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default = "b1g6c8c6gi8ud4pc3deq"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.128.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

### 

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

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Whether the VM is preemptible."
}

variable "vm_web_vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILGDJdtFM56kwGfTh9tNGYqnI7TtB33G5soUvc6emCpU dnd@dnd-VirtualBox"
  description = "ssh-keygen -t ed25519"
}
