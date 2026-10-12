variable "iceberg_tables" {
  description = <<EOT
Map of iceberg_tables, attributes below
Required:
    - database
    - name
    - schema
    - column (block):
        - comment (optional)
        - default (optional, block):
            - expression (required)
        - masking_policy (optional, block):
            - policy_name (required)
            - using (optional)
        - name (required)
        - not_null (optional)
        - projection_policy (optional, block):
            - policy_name (required)
        - type (required)
Optional:
    - base_location
    - catalog
    - catalog_sync
    - change_tracking
    - cluster_by
    - comment
    - data_retention_time_in_days
    - enable_data_compaction
    - enable_iceberg_merge_on_read
    - error_logging
    - external_volume
    - iceberg_version
    - max_data_extension_time_in_days
    - path_layout
    - storage_serialization_policy
    - target_file_size
    - aggregation_policy (block):
        - entity_key (optional)
        - policy_name (required)
    - check_constraint (block):
        - expression (required)
        - name (optional)
        - validate (optional)
    - foreign_key_constraint (block):
        - columns (required)
        - comment (optional)
        - deferrable (optional)
        - enable (optional)
        - enforced (optional)
        - initially_deferred (optional)
        - match (optional)
        - name (optional)
        - on_delete (optional)
        - on_update (optional)
        - ref_columns (optional)
        - rely (optional)
        - table_name (required)
        - validate (optional)
    - partition_by (block):
        - bucket (optional, block):
            - column (required)
            - num_buckets (required)
        - day (optional)
        - hour (optional)
        - identity (optional)
        - month (optional)
        - truncate (optional, block):
            - column (required)
            - width (required)
        - year (optional)
    - primary_key_constraint (block):
        - columns (required)
        - comment (optional)
        - deferrable (optional)
        - enable (optional)
        - enforced (optional)
        - initially_deferred (optional)
        - name (optional)
        - rely (optional)
        - validate (optional)
    - row_access_policy (block):
        - on (required)
        - policy_name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
    - unique_constraint (block):
        - columns (required)
        - comment (optional)
        - deferrable (optional)
        - enable (optional)
        - enforced (optional)
        - initially_deferred (optional)
        - name (optional)
        - rely (optional)
        - validate (optional)
EOT

  type = map(object({
    database                        = string
    name                            = string
    schema                          = string
    base_location                   = optional(string)
    catalog                         = optional(string)
    catalog_sync                    = optional(string)
    change_tracking                 = optional(string)
    cluster_by                      = optional(list(string))
    comment                         = optional(string)
    data_retention_time_in_days     = optional(number)
    enable_data_compaction          = optional(bool)
    enable_iceberg_merge_on_read    = optional(bool)
    error_logging                   = optional(string)
    external_volume                 = optional(string)
    iceberg_version                 = optional(number)
    max_data_extension_time_in_days = optional(number)
    path_layout                     = optional(string)
    storage_serialization_policy    = optional(string)
    target_file_size                = optional(string)
    column = list(object({
      comment = optional(string)
      default = optional(object({
        expression = string
      }))
      masking_policy = optional(object({
        policy_name = string
        using       = optional(list(string))
      }))
      name     = string
      not_null = optional(string)
      projection_policy = optional(object({
        policy_name = string
      }))
      type = string
    }))
    aggregation_policy = optional(object({
      entity_key  = optional(set(string))
      policy_name = string
    }))
    check_constraint = optional(list(object({
      expression = string
      name       = optional(string)
      validate   = optional(string)
    })))
    foreign_key_constraint = optional(list(object({
      columns            = list(string)
      comment            = optional(string)
      deferrable         = optional(string)
      enable             = optional(string)
      enforced           = optional(string)
      initially_deferred = optional(string)
      match              = optional(string)
      name               = optional(string)
      on_delete          = optional(string)
      on_update          = optional(string)
      ref_columns        = optional(list(string))
      rely               = optional(string)
      table_name         = string
      validate           = optional(string)
    })))
    partition_by = optional(list(object({
      bucket = optional(object({
        column      = string
        num_buckets = number
      }))
      day      = optional(string)
      hour     = optional(string)
      identity = optional(string)
      month    = optional(string)
      truncate = optional(object({
        column = string
        width  = number
      }))
      year = optional(string)
    })))
    primary_key_constraint = optional(object({
      columns            = list(string)
      comment            = optional(string)
      deferrable         = optional(string)
      enable             = optional(string)
      enforced           = optional(string)
      initially_deferred = optional(string)
      name               = optional(string)
      rely               = optional(string)
      validate           = optional(string)
    }))
    row_access_policy = optional(object({
      on          = set(string)
      policy_name = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    unique_constraint = optional(list(object({
      columns            = list(string)
      comment            = optional(string)
      deferrable         = optional(string)
      enable             = optional(string)
      enforced           = optional(string)
      initially_deferred = optional(string)
      name               = optional(string)
      rely               = optional(string)
      validate           = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iceberg_tables : (
        length(v.column) >= 1
      )
    ])
    error_message = "Each column list must contain at least 1 items"
  }
}

