module "example" {
  source = "../.."

  environment           = "example"
  name                  = "gsi"
  hash_key              = "id"
  dynamodb_table_exists = false # can later be set to true to ensure that scaled read/write capacity is taken into account (unless the table scaled lower than defined via Iac)
  dynamodb_attributes = [
    {
      name = "id2"
      type = "S"
    },
    {
      name = "created_at"
      type = "N"
    },
  ]

  global_secondary_index_map = [
    {
      hash_key           = "id2"
      name               = "foo"
      non_key_attributes = []
      projection_type    = "KEYS_ONLY"
      range_key          = "created_at"
      read_capacity      = 1
      write_capacity     = 1
    }
  ]
}
