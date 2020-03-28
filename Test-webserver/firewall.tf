resource "google_compute_firewall" "default" {
  name    = "testfirewall"
  network = google_compute_network.default.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "22"]
  }

  source_tags = ["web"]
  source_ranges = ["111.92.0.0/16", "104.56.114.248"]
}

resource "google_compute_network" "default" {

        name = "test-network"
}