variable "name" { type = string }
variable "domain_name" { type = string }
variable "record_value" {
  type    = string
  default = ""
}
variable "lb_zone_id" {
  type    = string
  default = ""
}
variable "records" {
  type = list(object({
    name  = string
    type  = string
    ttl   = number
    value = string
  }))
  default = []
}
variable "environment" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}