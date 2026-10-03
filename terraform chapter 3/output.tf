output "vm_instanceid" {
  description = "VM Instance ID"
  value = google_compute_instance.myvm.instance_id
}

output "vm_external_io" {
  description = "vm ex IP"
  value = google_compute_instance.myvm.network_interface.0.access_config.0.nat_ip
}

output "vm_machine_type" {
  value = google_compute_instance.myvm.machine_type
}