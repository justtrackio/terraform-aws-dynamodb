variable "autoscale_max_read_capacity" {
  type        = number
  default     = 1000
  description = "DynamoDB autoscaling max read capacity"
}

variable "autoscale_max_write_capacity" {
  type        = number
  default     = 1000
  description = "DynamoDB autoscaling max write capacity"
}

variable "autoscale_min_read_capacity" {
  type        = number
  default     = 1
  description = "DynamoDB autoscaling min read capacity"
}

variable "autoscale_min_write_capacity" {
  type        = number
  default     = 1
  description = "DynamoDB autoscaling min write capacity"
}

variable "autoscale_read_schedule" {
  type = list(object({
    schedule     = string
    min_capacity = number
    max_capacity = number
  }))
  description = "Provides an DynamoDB autoscaling scheduled action resource"
  default     = []
}

variable "autoscale_read_schedule_index" {
  type = list(object({
    schedule     = string
    min_capacity = number
    max_capacity = number
  }))
  description = "Provides an DynamoDB autoscaling scheduled action resource"
  default     = []
}

variable "autoscale_read_target" {
  type        = number
  default     = 75
  description = "The target value (in %) for DynamoDB read autoscaling"
}

variable "autoscale_write_schedule" {
  type = list(object({
    schedule     = string
    min_capacity = number
    max_capacity = number
  }))
  description = "Provides an DynamoDB autoscaling scheduled action resource"
  default     = []
}

variable "autoscale_write_schedule_index" {
  type = list(object({
    schedule     = string
    min_capacity = number
    max_capacity = number
  }))
  description = "Provides an DynamoDB autoscaling scheduled action resource"
  default     = []
}

variable "autoscale_write_target" {
  type        = number
  default     = 75
  description = "The target value (in %) for DynamoDB write autoscaling"
}

variable "autoscaler_attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes for the autoscaler module"
}

variable "autoscaler_tags" {
  type        = map(string)
  default     = {}
  description = "Additional resource tags for the autoscaler module"
}

variable "billing_mode" {
  type        = string
  default     = "PROVISIONED"
  description = "DynamoDB Billing mode. Can be PROVISIONED or PAY_PER_REQUEST"
}

variable "dynamodb_attributes" {
  type = list(object({
    name = string
    type = string
  }))
  default     = []
  description = "Additional DynamoDB attributes in the form of a list of mapped values"
}

variable "dynamodb_table_exists" {
  type        = bool
  default     = true
  description = "Need to be 'false' for the initial DynamoDB table creation"
}

variable "enable_autoscaler" {
  type        = bool
  default     = true
  description = "Flag to enable/disable DynamoDB autoscaling"
}

variable "enable_encryption" {
  type        = bool
  default     = false
  description = "Enable DynamoDB server-side encryption"
}

variable "enable_point_in_time_recovery" {
  type        = bool
  default     = false
  description = "Enable DynamoDB point in time recovery"
}

variable "enable_streams" {
  type        = bool
  default     = false
  description = "Enable DynamoDB streams"
}

variable "global_secondary_index_map" {
  type = list(object({
    hash_key           = string
    name               = string
    non_key_attributes = list(string)
    projection_type    = string
    range_key          = string
    read_capacity      = number
    write_capacity     = number
  }))
  default     = []
  description = "Additional global secondary indexes in the form of a list of mapped values"
}

variable "hash_key" {
  type        = string
  description = "DynamoDB table Hash Key"
}

variable "hash_key_type" {
  type        = string
  default     = "S"
  description = "Hash Key type, which must be a scalar type: `S`, `N`, or `B` for (S)tring, (N)umber or (B)inary data"
}

variable "local_secondary_index_map" {
  type = list(object({
    name               = string
    non_key_attributes = list(string)
    projection_type    = string
    range_key          = string
  }))
  default     = []
  description = "Additional local secondary indexes in the form of a list of mapped values"
}

variable "range_key" {
  type        = string
  default     = ""
  description = "DynamoDB table Range Key"
}

variable "range_key_type" {
  type        = string
  default     = "S"
  description = "Range Key type, which must be a scalar type: `S`, `N`, or `B` for (S)tring, (N)umber or (B)inary data"
}

variable "replicas" {
  type        = list(string)
  default     = []
  description = "List of regions to create replica"
}

variable "server_side_encryption_kms_key_arn" {
  type        = string
  default     = null
  description = "The ARN of the CMK that should be used for the AWS KMS encryption. This attribute should only be specified if the key is different from the default DynamoDB CMK, alias/aws/dynamodb."
}

variable "stream_view_type" {
  type        = string
  default     = ""
  description = "(Optional) When an item in the table is modified, StreamViewType determines what information is written to the table's stream. Valid values are `KEYS_ONLY`, `NEW_IMAGE`, `OLD_IMAGE`, `NEW_AND_OLD_IMAGES`."
}

variable "tags_enabled" {
  type        = bool
  default     = true
  description = "Set to `false` to disable tagging. This can be helpful if you're managing tables on dynamodb-local with terraform as it doesn't support tagging."
}

variable "ttl_attribute" {
  type        = string
  default     = "ttl"
  description = "DynamoDB table TTL attribute"
}

variable "ttl_enabled" {
  type        = bool
  default     = true
  description = "Set to false to disable DynamoDB table TTL"
}
