output "database_db_system_shapes_lookup_id" {
  description = "Map of id values across all database_db_system_shapes_lookup, keyed the same as var.database_db_system_shapes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_db_system_shapes.database_db_system_shapes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_db_system_shapes_lookup_availability_domain" {
  description = "Map of availability_domain values across all database_db_system_shapes_lookup, keyed the same as var.database_db_system_shapes_lookup except keys with no availability_domain are omitted"
  value       = { for k, v in data.oci_database_db_system_shapes.database_db_system_shapes_lookup : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "database_db_system_shapes_lookup_compartment_id" {
  description = "Map of compartment_id values across all database_db_system_shapes_lookup, keyed the same as var.database_db_system_shapes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_database_db_system_shapes.database_db_system_shapes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_db_system_shapes_lookup_db_system_shapes" {
  description = "Map of db_system_shapes values across all database_db_system_shapes_lookup, keyed the same as var.database_db_system_shapes_lookup except keys with no db_system_shapes are omitted"
  value       = { for k, v in data.oci_database_db_system_shapes.database_db_system_shapes_lookup : k => v.db_system_shapes if v.db_system_shapes != null && length(v.db_system_shapes) > 0 }
}
output "database_db_system_shapes_lookup_filter" {
  description = "Map of filter values across all database_db_system_shapes_lookup, keyed the same as var.database_db_system_shapes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_db_system_shapes.database_db_system_shapes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_db_system_shapes_lookup_shape_attribute" {
  description = "Map of shape_attribute values across all database_db_system_shapes_lookup, keyed the same as var.database_db_system_shapes_lookup except keys with no shape_attribute are omitted"
  value       = { for k, v in data.oci_database_db_system_shapes.database_db_system_shapes_lookup : k => v.shape_attribute if v.shape_attribute != null && length(v.shape_attribute) > 0 }
}

