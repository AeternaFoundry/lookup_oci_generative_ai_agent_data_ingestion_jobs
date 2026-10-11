variable "generative_ai_agent_data_ingestion_jobs_lookup" {
  description = <<EOT
Map of generative_ai_agent_data_ingestion_jobs_lookup, attributes below
Optional:
    - compartment_id
    - data_source_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    data_source_id = optional(string)
    display_name   = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

