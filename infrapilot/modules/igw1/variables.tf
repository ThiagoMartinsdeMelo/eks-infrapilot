variable "name" { type = string }
variable "vpc_id" {
  type    = string
  default = ""
}
variable "environment" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}