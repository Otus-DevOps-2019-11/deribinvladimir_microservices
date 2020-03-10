resource "google_compute_firewall" "firewall_reddit" {
  name        = "allow-reddit-access"
  description = "Allow access to reddit from anywhere"
  network     = "default"
  allow {
    protocol = "tcp"
    ports    = ["22","9292"]
  }
  source_ranges = var.source_ranges
}
