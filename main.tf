data "oci_database_db_system_shapes" "database_db_system_shapes_lookup" {
  for_each = var.database_db_system_shapes_lookup

  compartment_id      = each.value.compartment_id
  availability_domain = each.value.availability_domain
  shape_attribute     = each.value.shape_attribute

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

