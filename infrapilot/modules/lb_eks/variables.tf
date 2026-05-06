variable "name" { type = string }
variable "vpc_id" {
  type    = string
  default = ""
}
variable "subnet_ids" {
  type    = list(string)
  default = []
}
variable "security_group_ids" {
  type    = list(string)
  default = []
}
variable "target_port" {
  type    = number
  default = 80
}
variable "health_check_path" {
  type    = string
  default = "/"
}
variable "environment" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}