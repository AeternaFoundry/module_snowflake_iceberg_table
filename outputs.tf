output "iceberg_tables_id" {
  description = "Map of id values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no id are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iceberg_tables_aggregation_policy" {
  description = "Map of aggregation_policy values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no aggregation_policy are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => one(v.aggregation_policy) if v.aggregation_policy != null && length(v.aggregation_policy) > 0 }
}
output "iceberg_tables_base_location" {
  description = "Map of base_location values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no base_location are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.base_location if v.base_location != null && length(v.base_location) > 0 }
}
output "iceberg_tables_catalog" {
  description = "Map of catalog values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no catalog are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.catalog if v.catalog != null && length(v.catalog) > 0 }
}
output "iceberg_tables_catalog_sync" {
  description = "Map of catalog_sync values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no catalog_sync are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.catalog_sync if v.catalog_sync != null && length(v.catalog_sync) > 0 }
}
output "iceberg_tables_change_tracking" {
  description = "Map of change_tracking values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no change_tracking are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.change_tracking if v.change_tracking != null && length(v.change_tracking) > 0 }
}
output "iceberg_tables_check_constraint" {
  description = "Map of check_constraint values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no check_constraint are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.check_constraint if v.check_constraint != null && length(v.check_constraint) > 0 }
}
output "iceberg_tables_cluster_by" {
  description = "Map of cluster_by values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no cluster_by are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.cluster_by if v.cluster_by != null && length(v.cluster_by) > 0 }
}
output "iceberg_tables_column" {
  description = "Map of column values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no column are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.column if v.column != null && length(v.column) > 0 }
}
output "iceberg_tables_comment" {
  description = "Map of comment values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no comment are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "iceberg_tables_data_retention_time_in_days" {
  description = "Map of data_retention_time_in_days values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no data_retention_time_in_days are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.data_retention_time_in_days if v.data_retention_time_in_days != null }
}
output "iceberg_tables_database" {
  description = "Map of database values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no database are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.database if v.database != null && length(v.database) > 0 }
}
output "iceberg_tables_describe_output" {
  description = "Map of describe_output values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "iceberg_tables_enable_data_compaction" {
  description = "Map of enable_data_compaction values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no enable_data_compaction are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.enable_data_compaction if v.enable_data_compaction != null }
}
output "iceberg_tables_enable_iceberg_merge_on_read" {
  description = "Map of enable_iceberg_merge_on_read values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no enable_iceberg_merge_on_read are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.enable_iceberg_merge_on_read if v.enable_iceberg_merge_on_read != null }
}
output "iceberg_tables_error_logging" {
  description = "Map of error_logging values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no error_logging are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.error_logging if v.error_logging != null && length(v.error_logging) > 0 }
}
output "iceberg_tables_external_volume" {
  description = "Map of external_volume values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no external_volume are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.external_volume if v.external_volume != null && length(v.external_volume) > 0 }
}
output "iceberg_tables_foreign_key_constraint" {
  description = "Map of foreign_key_constraint values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no foreign_key_constraint are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.foreign_key_constraint if v.foreign_key_constraint != null && length(v.foreign_key_constraint) > 0 }
}
output "iceberg_tables_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "iceberg_tables_iceberg_version" {
  description = "Map of iceberg_version values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no iceberg_version are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.iceberg_version if v.iceberg_version != null }
}
output "iceberg_tables_max_data_extension_time_in_days" {
  description = "Map of max_data_extension_time_in_days values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no max_data_extension_time_in_days are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.max_data_extension_time_in_days if v.max_data_extension_time_in_days != null }
}
output "iceberg_tables_name" {
  description = "Map of name values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no name are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iceberg_tables_parameters" {
  description = "Map of parameters values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no parameters are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "iceberg_tables_partition_by" {
  description = "Map of partition_by values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no partition_by are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.partition_by if v.partition_by != null && length(v.partition_by) > 0 }
}
output "iceberg_tables_path_layout" {
  description = "Map of path_layout values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no path_layout are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.path_layout if v.path_layout != null && length(v.path_layout) > 0 }
}
output "iceberg_tables_primary_key_constraint" {
  description = "Map of primary_key_constraint values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no primary_key_constraint are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => one(v.primary_key_constraint) if v.primary_key_constraint != null && length(v.primary_key_constraint) > 0 }
}
output "iceberg_tables_row_access_policy" {
  description = "Map of row_access_policy values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no row_access_policy are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => one(v.row_access_policy) if v.row_access_policy != null && length(v.row_access_policy) > 0 }
}
output "iceberg_tables_schema" {
  description = "Map of schema values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no schema are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "iceberg_tables_show_output" {
  description = "Map of show_output values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no show_output are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}
output "iceberg_tables_storage_serialization_policy" {
  description = "Map of storage_serialization_policy values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no storage_serialization_policy are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.storage_serialization_policy if v.storage_serialization_policy != null && length(v.storage_serialization_policy) > 0 }
}
output "iceberg_tables_target_file_size" {
  description = "Map of target_file_size values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no target_file_size are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.target_file_size if v.target_file_size != null && length(v.target_file_size) > 0 }
}
output "iceberg_tables_unique_constraint" {
  description = "Map of unique_constraint values across all iceberg_tables, keyed the same as var.iceberg_tables except keys with no unique_constraint are omitted"
  value       = { for k, v in snowflake_iceberg_table.iceberg_tables : k => v.unique_constraint if v.unique_constraint != null && length(v.unique_constraint) > 0 }
}

