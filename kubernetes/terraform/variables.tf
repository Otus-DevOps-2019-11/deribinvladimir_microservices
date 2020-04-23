variable project {
  type        = string
  description = "Project ID"
  default     = "docker-267019"
}

variable region {
  type        = string
  description = "Region"
  default     = "europe-west3"
}

variable zone {
  type        = string
  description = "Zone"
  default     = "europe-west3-c"
}

variable nodetags {
  type        = list(string)
  description = "List of tags"
}

variable port-list {
  type        = list(string)
  description = "Ports range"
}
