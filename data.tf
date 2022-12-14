data "aws_dynamodb_table" "default" {
  count = var.dynamodb_table_exists && length(var.global_secondary_index_map) > 0 ? 1 : 0
  name  = module.this.id
}
