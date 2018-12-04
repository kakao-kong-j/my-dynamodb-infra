module "dynamodb_table" {
  source                       = "git::https://github.com/cloudposse/terraform-aws-dynamodb.git?ref=master"
  namespace                    = "cp"
  stage                        = "staging"
  name                         = "${var.name}"
  hash_key                     = "${var.hash_key}"
  range_key                    = "${var.range_key}"
  autoscale_write_target       = "${var.autoscale_write_target}"
  autoscale_read_target        = "${var.autoscale_read_target}"
  autoscale_min_read_capacity  = "${var.autoscale_min_read_capacity}"
  autoscale_max_read_capacity  = "${var.autoscale_max_read_capacity}"
  autoscale_min_write_capacity = "${var.autoscale_min_write_capacity}"
  autoscale_max_write_capacity = "${var.autoscale_max_write_capacity}"
  enable_autoscaler            = "true"

  dynamodb_attributes = "${var.attributes}"

  local_secondary_index_map = "${var.local_secondary_index_map}"

  global_secondary_index_map = "${var.global_secondary_index_map}"
}

resource "null_resource" "example" {}
