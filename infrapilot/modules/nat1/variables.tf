variable "name" { type = string }
variable "subnet_id" {
  type    = string
  default = ""
}
variable "connectivity_type" {
  type    = string
  default = "public"
}
variable "environment" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}