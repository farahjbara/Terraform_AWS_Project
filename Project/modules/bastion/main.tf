resource "aws_instance" "bastion" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  tags = {
    Name = "bastion"
  }
}

output "bastion_id" {
  value = aws_instance.bastion.id
}
