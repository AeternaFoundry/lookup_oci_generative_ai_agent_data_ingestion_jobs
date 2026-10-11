data "oci_generative_ai_agent_data_ingestion_jobs" "generative_ai_agent_data_ingestion_jobs_lookup" {
  for_each = var.generative_ai_agent_data_ingestion_jobs_lookup

  compartment_id = each.value.compartment_id
  data_source_id = each.value.data_source_id
  display_name   = each.value.display_name
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

