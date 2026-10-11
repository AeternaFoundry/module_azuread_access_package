output "access_packages_id" {
  description = "Map of id values across all access_packages, keyed the same as var.access_packages"
  value       = { for k, v in azuread_access_package.access_packages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "access_packages_catalog_id" {
  description = "Map of catalog_id values across all access_packages, keyed the same as var.access_packages"
  value       = { for k, v in azuread_access_package.access_packages : k => v.catalog_id if v.catalog_id != null && length(v.catalog_id) > 0 }
}
output "access_packages_description" {
  description = "Map of description values across all access_packages, keyed the same as var.access_packages"
  value       = { for k, v in azuread_access_package.access_packages : k => v.description if v.description != null && length(v.description) > 0 }
}
output "access_packages_display_name" {
  description = "Map of display_name values across all access_packages, keyed the same as var.access_packages"
  value       = { for k, v in azuread_access_package.access_packages : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "access_packages_hidden" {
  description = "Map of hidden values across all access_packages, keyed the same as var.access_packages"
  value       = { for k, v in azuread_access_package.access_packages : k => v.hidden if v.hidden != null }
}

