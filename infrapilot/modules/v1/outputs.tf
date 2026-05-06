output "vpc_id" { value = aws_vpc.this.id }
output "vpc_cidr_block" { value = aws_vpc.this.cidr_block }
output "main_route_table_id" { value = aws_vpc.this.main_route_table_id }