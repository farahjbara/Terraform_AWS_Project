resource "aws_nat_gateway" "this" {
  allocation_id = var.eip_id
  subnet_id     = var.subnet_id
  tags = {
    Name = "nat-gateway"
  }
}

output "nat_gateway_id" {
  value = aws_nat_gateway.this.id
}
