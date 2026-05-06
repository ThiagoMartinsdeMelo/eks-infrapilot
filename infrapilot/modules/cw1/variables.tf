variable "name" { type = string }
variable "alarm_namespace" {
  type    = string
  default = "AWS/EC2"
}
variable "alarm_metric" {
  type    = string
  default = "CPUUtilization"
}
variable "alarm_threshold" {
  type    = number
  default = 80
}
variable "alarm_period" {
  type    = number
  default = 300
}
variable "alarm_eval_periods" {
  type    = number
  default = 2
}
variable "environment" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}