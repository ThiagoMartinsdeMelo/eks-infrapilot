locals {
  is_public = var.connectivity_type == "public"
}

resource "aws_eip" "nat" {
  count  = local.is_public ? 1 : 0
  domain = "vpc"
  tags   = merge(var.tags, { Name = "${var.name}-eip", Environment = var.environment })
}

resource "aws_nat_gateway" "this" {
  connectivity_type = var.connectivity_type
  allocation_id     = local.is_public ? aws_eip.nat[0].id : null
  subnet_id         = var.subnet_id
  tags              = merge(var.tags, { Name = var.name, Environment = var.environment })
}