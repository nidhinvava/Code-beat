resource "google_compute_firewall" "default" {
  name    = "testfirewall"
  network = google_compute_network.default.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "22", "8080"]
  }

  source_tags = ["web"]
}

resource "google_compute_network" "default" {

        name = "test-network"
}