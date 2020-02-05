variable zone {
  description = "Zone"
  default     = "europe-west3-a"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
  default     = "~/.ssh/appuser.pub"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
  default     = "~/.ssh/appuser"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "docker-host-base"
}

variable instance_count {
  default = "1"
}
