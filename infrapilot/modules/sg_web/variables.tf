variable "name" { type = string }
variable "sg_description" {
  type    = string
  default = "Managed by InfraPilot"
}
variable "vpc_id" {
  type    = string
  default = ""
}
variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr        = string
    description = string
  }))
  default = [{ from_port = 80, to_port = 80, protocol = "tcp", cidr = "0.0.0.0/0", description = "" }]
}
variable "egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr        = string
    description = string
  }))
  default = [{ from_port = 0, to_port = 0, protocol = "-1", cidr = "0.0.0.0/0", description = "" }]
}
variable "environment" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}