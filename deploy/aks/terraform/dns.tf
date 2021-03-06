resource "google_dns_record_set" "wildcard" {
  name = "*.${var.env_dns_domain}."
  project = var.google_project

  type = "A"
  ttl  = 300

  managed_zone = var.dns_zone_name

  rrdatas = [azurerm_public_ip.lb_static_ip.ip_address]
}
