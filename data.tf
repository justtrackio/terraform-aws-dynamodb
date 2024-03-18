locals {
  gsi_read_capacity_defined  = can(coalesce(var.global_secondary_indexes[*].read_capacity))
  gsi_write_capacity_defined = can(coalesce(var.global_secondary_indexes[*].write_capacity))
  check_gsi_data             = !alltrue([local.gsi_read_capacity_defined, local.gsi_write_capacity_defined])
}

data "aws_dynamodb_table" "default" {
  count = local.check_gsi_data ? 1 : 0
  name  = var.name
}
