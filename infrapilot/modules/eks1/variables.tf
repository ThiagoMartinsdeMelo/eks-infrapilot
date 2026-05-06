variable "name" { type = string }
variable "region" { default = "us-east-1" }
variable "cluster_version" { default = "1.27" }
variable "compute_type" { default = "node_group" }
variable "instance_type" { default = "t3.medium" }
variable "subnet_ids" {
  type    = list(string)
  default = []
}
variable "use_spot" {
  type    = bool
  default = false
}
variable "desired_size" { default = 2 }
variable "min_size" { default = 2 }
variable "max_size" { default = 3 }
variable "cluster_role_name" {
  type    = string
  default = "eks-cluster-role"
}
variable "environment" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}