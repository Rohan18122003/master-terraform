resource "google_compute_subnetwork" "mysubnetwork1" {
   name = "mysubnetwork"
   ip_cidr_range = "10.2.0.0/24"
   region = "us-central1"
   network = google_compute_network.myvpc.id
   secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
}