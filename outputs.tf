output "table_name" {
  value       = try(aws_dynamodb_table.default[0].name, "")
  description = "DynamoDB table name"
}

output "table_id" {
  value       = try(aws_dynamodb_table.default[0].id, "")
  description = "DynamoDB table ID"
}

output "table_arn" {
  value       = try(aws_dynamodb_table.default[0].arn, "")
  description = "DynamoDB table ARN"
}

output "global_secondary_index_names" {
  value       = [for gsi in null_resource.global_secondary_index_names : gsi.triggers.name]
  description = "DynamoDB secondary index names"
}

output "local_secondary_index_names" {
  value       = [for gsi in null_resource.local_secondary_index_names : gsi.triggers.name]
  description = "DynamoDB local index names"
}

output "table_stream_arn" {
  value       = try(aws_dynamodb_table.default[0].stream_arn, "")
  description = "DynamoDB table stream ARN"
}

output "table_stream_label" {
  value       = try(aws_dynamodb_table.default[0].stream_label, "")
  description = "DynamoDB table stream label"
}
