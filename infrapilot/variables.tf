variable "aws_region" { default = "us-east-1" }
variable "instance_type" { default = "t3.micro" }
variable "instance_class" { default = "db.t3.micro" }
variable "db_engine" { default = "mysql" }
variable "use_spot" {
  type    = bool
  default = false
}
variable "multi_az" {
  type    = bool
  default = false
}
variable "environment" {
  type    = string
  default = "dev"
}