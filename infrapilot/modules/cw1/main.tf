resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/app/${var.name}"
  retention_in_days = 7
  tags              = merge(var.tags, { Name = var.name, Environment = var.environment })
}

resource "aws_cloudwatch_metric_alarm" "this" {
  alarm_name          = "${var.name}-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.alarm_eval_periods
  metric_name         = var.alarm_metric
  namespace           = var.alarm_namespace
  period              = var.alarm_period
  statistic           = "Average"
  threshold           = var.alarm_threshold
  alarm_description   = "Alarm for ${var.name}"
  tags                = merge(var.tags, { Name = "${var.name}-alarm", Environment = var.environment })
}