variable "name" { type = string }
variable "bucket_name" { type = string }
variable "versioning_enabled" {
  type    = bool
  default = true
}
variable "encryption_enabled" {
  type    = bool
  default = true
}
variable "environment" { type = string }
variable "tags" {
  type    = map(string)
  default = {}
}