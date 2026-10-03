resource "google_compute_firewall" "fw_sh_in" {
  name    = "firewall-ingress"
  network = google_compute_network.myvpc.id

  allow {
    protocol = "icmp"
  }


  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000","22"]
  }

  direction     = "INGRESS"
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]

  target_tags = ["ssh-tag"]
}


resource "google_compute_firewall" "fw_sh_en" {
  name    = "firewall-egress"
  network = google_compute_network.myvpc.id

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }

  direction = "EGRESS"

  priority = 1000

  destination_ranges = ["0.0.0.0/0"]

  target_tags = ["ssh-tag"]
}


resource "google_compute_firewall" "fw_http" {
  name    = "allowhttp"
  network = google_compute_network.myvpc.id

  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }

  direction     = "INGRESS"
  source_ranges = ["0.0.0.0/0"]

  target_tags = ["webserver-tag"]
}