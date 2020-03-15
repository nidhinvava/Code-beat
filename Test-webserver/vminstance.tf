resource "google_compute_instance" "vm_instance" {
  name         = "Test-webserver"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "rhel-7"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "${google_compute_network.vpc_network.self_link}"
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "test-network"
  auto_create_subnetworks = "true"
}