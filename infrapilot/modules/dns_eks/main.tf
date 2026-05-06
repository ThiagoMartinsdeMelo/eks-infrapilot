resource "aws_route53_zone" "this" {
  name = var.domain_name
  tags = merge(var.tags, { Name = var.name, Environment = var.environment })
}

resource "aws_route53_record" "this" {
  for_each = { for idx, r in var.records : "${r.type}_${r.name}_${tostring(idx)}" => r }
  zone_id  = aws_route53_zone.this.zone_id
  name     = each.value.name
  type     = each.value.type
  ttl      = each.value.ttl
  records  = [each.value.value]
}