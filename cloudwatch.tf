locals {
  alarm_description = "DynamoDB table metrics: https://${module.this.aws_region}.console.aws.amazon.com/dynamodbv2/home?region=${module.this.aws_region}#table?name=${var.name}&tab=monitoring"
  alarm_topic_arn   = var.alarm_topic_arn != null ? var.alarm_topic_arn : "arn:aws:sns:${module.this.aws_region}:${module.this.aws_account_id}:${module.this.environment}-alarms"
}

resource "aws_cloudwatch_metric_alarm" "read_throttles" {
  count = module.this.enabled && var.alarm_enabled ? 1 : 0

  alarm_description = jsonencode(merge({
    Severity    = "warning"
    Description = local.alarm_description
  }, module.this.tags, module.this.additional_tag_map))
  alarm_name          = "${var.name}-table-reads-throttling"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = var.alarm.datapoints_to_alarm
  evaluation_periods  = var.alarm.evaluation_periods
  threshold           = var.alarm.threshold
  treat_missing_data  = "notBreaching"

  metric_query {
    id          = "throttles"
    return_data = true

    metric {
      dimensions = {
        TableName = var.name
      }
      metric_name = "ReadThrottleEvents"
      namespace   = "AWS/DynamoDB"
      period      = var.alarm.period
      stat        = "Sum"
    }
  }

  alarm_actions = [local.alarm_topic_arn]
  ok_actions    = [local.alarm_topic_arn]

  tags = module.this.tags
}

resource "aws_cloudwatch_metric_alarm" "write_throttles" {
  count = module.this.enabled && var.alarm_enabled ? 1 : 0

  alarm_description = jsonencode(merge({
    Severity    = "warning"
    Description = local.alarm_description
  }, module.this.tags, module.this.additional_tag_map))
  alarm_name          = "${var.name}-table-writes-throttling"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = var.alarm.datapoints_to_alarm
  evaluation_periods  = var.alarm.evaluation_periods
  threshold           = var.alarm.threshold
  treat_missing_data  = "notBreaching"

  metric_query {
    id          = "throttles"
    return_data = true

    metric {
      dimensions = {
        TableName = var.name
      }
      metric_name = "WriteThrottleEvents"
      namespace   = "AWS/DynamoDB"
      period      = var.alarm.period
      stat        = "Sum"
    }
  }

  alarm_actions = [local.alarm_topic_arn]
  ok_actions    = [local.alarm_topic_arn]

  tags = module.this.tags
}

resource "aws_cloudwatch_metric_alarm" "read_gsi_throttles" {
  for_each = module.this.enabled && var.alarm_enabled ? { for index, gsi in var.global_secondary_indexes : gsi.name => gsi } : {}

  alarm_description = jsonencode(merge({
    Severity    = "warning"
    Description = local.alarm_description
  }, module.this.tags, module.this.additional_tag_map))
  alarm_name          = "${var.name}-gsi-${each.key}-reads-throttling"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = var.alarm.datapoints_to_alarm
  evaluation_periods  = var.alarm.evaluation_periods
  threshold           = var.alarm.threshold
  treat_missing_data  = "notBreaching"

  metric_query {
    id          = "throttles"
    return_data = true

    metric {
      dimensions = {
        TableName                = var.name
        GlobalSecondaryIndexName = each.key
      }
      metric_name = "ReadThrottleEvents"
      namespace   = "AWS/DynamoDB"
      period      = var.alarm.period
      stat        = "Sum"
    }
  }

  alarm_actions = [local.alarm_topic_arn]
  ok_actions    = [local.alarm_topic_arn]

  tags = module.this.tags
}

resource "aws_cloudwatch_metric_alarm" "write_gsi_throttles" {
  for_each = module.this.enabled && var.alarm_enabled ? { for index, gsi in var.global_secondary_indexes : gsi.name => gsi } : {}

  alarm_description = jsonencode(merge({
    Severity    = "warning"
    Description = local.alarm_description
  }, module.this.tags, module.this.additional_tag_map))
  alarm_name          = "${var.name}-gsi-${each.key}-writes-throttling"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = var.alarm.datapoints_to_alarm
  evaluation_periods  = var.alarm.evaluation_periods
  threshold           = var.alarm.threshold
  treat_missing_data  = "notBreaching"

  metric_query {
    id          = "throttles"
    return_data = true

    metric {
      dimensions = {
        TableName                = var.name
        GlobalSecondaryIndexName = each.key
      }
      metric_name = "WriteThrottleEvents"
      namespace   = "AWS/DynamoDB"
      period      = var.alarm.period
      stat        = "Sum"
    }
  }

  alarm_actions = [local.alarm_topic_arn]
  ok_actions    = [local.alarm_topic_arn]

  tags = module.this.tags
}
