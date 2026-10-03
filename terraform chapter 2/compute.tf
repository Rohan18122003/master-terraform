resource "google_compute_instance" "myvm" {
  name         = "my-instance"
  machine_type = "n2-standard-2"
  zone         = "us-central1-b"
  tags = [
    tolist(google_compute_firewall.fw_sh_in.target_tags)[0],
    tolist(google_compute_firewall.fw_sh_en.target_tags)[0],
    tolist(google_compute_firewall.fw_http.target_tags)[0]
  ]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      labels = {
        my_label = "value"
      }
    }
  }

  metadata_startup_script = file("${path.module}/app1-webserver-install.sh")

  network_interface {
    subnetwork  = google_compute_subnetwork.mysubnetwork1.id

    access_config {
      // Ephemeral public IP
    }
  }
}