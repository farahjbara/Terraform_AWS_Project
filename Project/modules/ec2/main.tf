resource "aws_instance" "app" {
  count = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = element(var.subnet_ids, count.index)
  tags = {
    Name = "app-instance-${count.index}"
  }
}

output "app_instance_ids" {
  value = aws_instance.app[*].id
}
