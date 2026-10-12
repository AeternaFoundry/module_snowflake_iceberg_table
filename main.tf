resource "snowflake_iceberg_table" "iceberg_tables" {
  for_each = var.iceberg_tables

  database                        = each.value.database
  name                            = each.value.name
  schema                          = each.value.schema
  base_location                   = each.value.base_location
  catalog                         = each.value.catalog
  catalog_sync                    = each.value.catalog_sync
  change_tracking                 = each.value.change_tracking
  cluster_by                      = each.value.cluster_by
  comment                         = each.value.comment
  data_retention_time_in_days     = each.value.data_retention_time_in_days
  enable_data_compaction          = each.value.enable_data_compaction
  enable_iceberg_merge_on_read    = each.value.enable_iceberg_merge_on_read
  error_logging                   = each.value.error_logging
  external_volume                 = each.value.external_volume
  iceberg_version                 = each.value.iceberg_version
  max_data_extension_time_in_days = each.value.max_data_extension_time_in_days
  path_layout                     = each.value.path_layout
  storage_serialization_policy    = each.value.storage_serialization_policy
  target_file_size                = each.value.target_file_size

  dynamic "column" {
    for_each = each.value.column
    content {
      comment = column.value.comment
      dynamic "default" {
        for_each = column.value.default != null ? [column.value.default] : []
        content {
          expression = default.value.expression
        }
      }
      dynamic "masking_policy" {
        for_each = column.value.masking_policy != null ? [column.value.masking_policy] : []
        content {
          policy_name = masking_policy.value.policy_name
          using       = masking_policy.value.using
        }
      }
      name     = column.value.name
      not_null = column.value.not_null
      dynamic "projection_policy" {
        for_each = column.value.projection_policy != null ? [column.value.projection_policy] : []
        content {
          policy_name = projection_policy.value.policy_name
        }
      }
      type = column.value.type
    }
  }

  dynamic "aggregation_policy" {
    for_each = each.value.aggregation_policy != null ? [each.value.aggregation_policy] : []
    content {
      entity_key  = aggregation_policy.value.entity_key
      policy_name = aggregation_policy.value.policy_name
    }
  }

  dynamic "check_constraint" {
    for_each = each.value.check_constraint != null ? each.value.check_constraint : []
    content {
      expression = check_constraint.value.expression
      name       = check_constraint.value.name
      validate   = check_constraint.value.validate
    }
  }

  dynamic "foreign_key_constraint" {
    for_each = each.value.foreign_key_constraint != null ? each.value.foreign_key_constraint : []
    content {
      columns            = foreign_key_constraint.value.columns
      comment            = foreign_key_constraint.value.comment
      deferrable         = foreign_key_constraint.value.deferrable
      enable             = foreign_key_constraint.value.enable
      enforced           = foreign_key_constraint.value.enforced
      initially_deferred = foreign_key_constraint.value.initially_deferred
      match              = foreign_key_constraint.value.match
      name               = foreign_key_constraint.value.name
      on_delete          = foreign_key_constraint.value.on_delete
      on_update          = foreign_key_constraint.value.on_update
      ref_columns        = foreign_key_constraint.value.ref_columns
      rely               = foreign_key_constraint.value.rely
      table_name         = foreign_key_constraint.value.table_name
      validate           = foreign_key_constraint.value.validate
    }
  }

  dynamic "partition_by" {
    for_each = each.value.partition_by != null ? each.value.partition_by : []
    content {
      dynamic "bucket" {
        for_each = partition_by.value.bucket != null ? [partition_by.value.bucket] : []
        content {
          column      = bucket.value.column
          num_buckets = bucket.value.num_buckets
        }
      }
      day      = partition_by.value.day
      hour     = partition_by.value.hour
      identity = partition_by.value.identity
      month    = partition_by.value.month
      dynamic "truncate" {
        for_each = partition_by.value.truncate != null ? [partition_by.value.truncate] : []
        content {
          column = truncate.value.column
          width  = truncate.value.width
        }
      }
      year = partition_by.value.year
    }
  }

  dynamic "primary_key_constraint" {
    for_each = each.value.primary_key_constraint != null ? [each.value.primary_key_constraint] : []
    content {
      columns            = primary_key_constraint.value.columns
      comment            = primary_key_constraint.value.comment
      deferrable         = primary_key_constraint.value.deferrable
      enable             = primary_key_constraint.value.enable
      enforced           = primary_key_constraint.value.enforced
      initially_deferred = primary_key_constraint.value.initially_deferred
      name               = primary_key_constraint.value.name
      rely               = primary_key_constraint.value.rely
      validate           = primary_key_constraint.value.validate
    }
  }

  dynamic "row_access_policy" {
    for_each = each.value.row_access_policy != null ? [each.value.row_access_policy] : []
    content {
      on          = row_access_policy.value.on
      policy_name = row_access_policy.value.policy_name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }

  dynamic "unique_constraint" {
    for_each = each.value.unique_constraint != null ? each.value.unique_constraint : []
    content {
      columns            = unique_constraint.value.columns
      comment            = unique_constraint.value.comment
      deferrable         = unique_constraint.value.deferrable
      enable             = unique_constraint.value.enable
      enforced           = unique_constraint.value.enforced
      initially_deferred = unique_constraint.value.initially_deferred
      name               = unique_constraint.value.name
      rely               = unique_constraint.value.rely
      validate           = unique_constraint.value.validate
    }
  }
}

