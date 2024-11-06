module "wrapper" {
  source = "../"

  for_each = var.items

  context = try(each.value.context, var.defaults.context, {
    enabled             = true
    namespace           = null
    tenant              = null
    environment         = null
    stage               = null
    name                = null
    delimiter           = null
    attributes          = []
    tags                = {}
    additional_tag_map  = {}
    regex_replace_chars = null
    label_order         = []
    id_length_limit     = null
    label_key_case      = null
    label_value_case    = null
    descriptor_formats  = {}







    labels_as_tags = ["unset"]
  })
  enabled                            = try(each.value.enabled, var.defaults.enabled, null)
  namespace                          = try(each.value.namespace, var.defaults.namespace, null)
  tenant                             = try(each.value.tenant, var.defaults.tenant, null)
  environment                        = try(each.value.environment, var.defaults.environment, null)
  stage                              = try(each.value.stage, var.defaults.stage, null)
  name                               = try(each.value.name, var.defaults.name, null)
  delimiter                          = try(each.value.delimiter, var.defaults.delimiter, null)
  attributes                         = try(each.value.attributes, var.defaults.attributes, [])
  labels_as_tags                     = try(each.value.labels_as_tags, var.defaults.labels_as_tags, ["default"])
  tags                               = try(each.value.tags, var.defaults.tags, {})
  additional_tag_map                 = try(each.value.additional_tag_map, var.defaults.additional_tag_map, {})
  label_order                        = try(each.value.label_order, var.defaults.label_order, null)
  regex_replace_chars                = try(each.value.regex_replace_chars, var.defaults.regex_replace_chars, null)
  id_length_limit                    = try(each.value.id_length_limit, var.defaults.id_length_limit, null)
  label_key_case                     = try(each.value.label_key_case, var.defaults.label_key_case, null)
  label_value_case                   = try(each.value.label_value_case, var.defaults.label_value_case, null)
  descriptor_formats                 = try(each.value.descriptor_formats, var.defaults.descriptor_formats, {})
  aws_account_id                     = try(each.value.aws_account_id, var.defaults.aws_account_id, null)
  aws_region                         = try(each.value.aws_region, var.defaults.aws_region, null)
  organizational_unit                = try(each.value.organizational_unit, var.defaults.organizational_unit, null)
  create_table                       = try(each.value.create_table, var.defaults.create_table, true)
  table_attributes                   = try(each.value.table_attributes, var.defaults.table_attributes)
  hash_key                           = try(each.value.hash_key, var.defaults.hash_key, null)
  range_key                          = try(each.value.range_key, var.defaults.range_key, null)
  billing_mode                       = try(each.value.billing_mode, var.defaults.billing_mode, "PAY_PER_REQUEST")
  write_capacity                     = try(each.value.write_capacity, var.defaults.write_capacity, null)
  read_capacity                      = try(each.value.read_capacity, var.defaults.read_capacity, null)
  point_in_time_recovery_enabled     = try(each.value.point_in_time_recovery_enabled, var.defaults.point_in_time_recovery_enabled, false)
  ttl_enabled                        = try(each.value.ttl_enabled, var.defaults.ttl_enabled, false)
  ttl_attribute_name                 = try(each.value.ttl_attribute_name, var.defaults.ttl_attribute_name, "ttl")
  global_secondary_indexes           = try(each.value.global_secondary_indexes, var.defaults.global_secondary_indexes, [])
  local_secondary_indexes            = try(each.value.local_secondary_indexes, var.defaults.local_secondary_indexes, [])
  replica_regions                    = try(each.value.replica_regions, var.defaults.replica_regions, [])
  stream_enabled                     = try(each.value.stream_enabled, var.defaults.stream_enabled, false)
  stream_view_type                   = try(each.value.stream_view_type, var.defaults.stream_view_type, null)
  server_side_encryption_enabled     = try(each.value.server_side_encryption_enabled, var.defaults.server_side_encryption_enabled, false)
  server_side_encryption_kms_key_arn = try(each.value.server_side_encryption_kms_key_arn, var.defaults.server_side_encryption_kms_key_arn, null)
  timeouts = try(each.value.timeouts, var.defaults.timeouts, {
    create = "10m"
    update = "60m"
    delete = "10m"
  })
  alarm               = try(each.value.alarm, var.defaults.alarm, {})
  alarm_enabled       = try(each.value.alarm_enabled, var.defaults.alarm_enabled, false)
  alarm_topic_arn     = try(each.value.alarm_topic_arn, var.defaults.alarm_topic_arn, null)
  autoscaling_enabled = try(each.value.autoscaling_enabled, var.defaults.autoscaling_enabled, false)
  autoscaling_defaults = try(each.value.autoscaling_defaults, var.defaults.autoscaling_defaults, {
    scale_in_cooldown  = 0
    scale_out_cooldown = 0
    target_value       = 70
  })
  autoscaling_read                         = try(each.value.autoscaling_read, var.defaults.autoscaling_read, {})
  autoscaling_write                        = try(each.value.autoscaling_write, var.defaults.autoscaling_write, {})
  autoscaling_indexes                      = try(each.value.autoscaling_indexes, var.defaults.autoscaling_indexes, {})
  schedule_scaling_read                    = try(each.value.schedule_scaling_read, var.defaults.schedule_scaling_read, [])
  schedule_scaling_write                   = try(each.value.schedule_scaling_write, var.defaults.schedule_scaling_write, [])
  schedule_scaling_indexes_read            = try(each.value.schedule_scaling_indexes_read, var.defaults.schedule_scaling_indexes_read, {})
  schedule_scaling_indexes_write           = try(each.value.schedule_scaling_indexes_write, var.defaults.schedule_scaling_indexes_write, {})
  table_class                              = try(each.value.table_class, var.defaults.table_class, null)
  deletion_protection_enabled              = try(each.value.deletion_protection_enabled, var.defaults.deletion_protection_enabled, null)
  ignore_changes_global_secondary_index    = try(each.value.ignore_changes_global_secondary_index, var.defaults.ignore_changes_global_secondary_index, false)
  table_policy_allow_actions               = try(each.value.table_policy_allow_actions, var.defaults.table_policy_allow_actions, ["dynamodb:*"])
  table_policy_allow_principal_identifiers = try(each.value.table_policy_allow_principal_identifiers, var.defaults.table_policy_allow_principal_identifiers, [])
  table_policy_allow_principal_type        = try(each.value.table_policy_allow_principal_type, var.defaults.table_policy_allow_principal_type, "AWS")
  table_policy_condition_test              = try(each.value.table_policy_condition_test, var.defaults.table_policy_condition_test, "ArnLike")
  table_policy_condition_values            = try(each.value.table_policy_condition_values, var.defaults.table_policy_condition_values, [])
  table_policy_condition_variable          = try(each.value.table_policy_condition_variable, var.defaults.table_policy_condition_variable, "aws:PrincipalArn")
}
