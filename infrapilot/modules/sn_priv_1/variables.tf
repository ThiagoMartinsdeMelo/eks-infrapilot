variable "name" { type = string }
variable "vpc_id" { type = string }
variable "cidr_block" { type = string }
variable "availability_zone" {
  type    = string
  default = ""
}
variable "map_public_ip_on_launch" {
  type    = bool
  default = false
}
variable "environment" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}