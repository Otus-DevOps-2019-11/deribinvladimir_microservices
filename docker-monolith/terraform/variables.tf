variable project {
  description = "Project ID"
}
# we can add description and default value, but this is optional
variable region {
  description = "Region"
  default     = "europe-west3"
}
variable zone {
  description = "Zone"
  default     = "europe-west3-a"
}
variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  description = "Path to the private key used for ssh access"
}
variable disk_image {
  description = "Disk image"
}
variable instance_count {
  description = "Number of instances"
  default     = "1"
}

variable app_disk_image {
  description = "Docker host image for reddit app"
  default     = "docker-host-base"
}
