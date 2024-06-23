resource "aws_lb" "this" {
  name               = "internal-alb"
  internal           = true
  load_balancer_type = "application"
  security_groups    = var.security_group_ids
  subnets            = var.subnet_ids

  tags = {
    Name = "internal-alb"
  }
}

output "alb_id" {
  value = aws_lb.this.id
}
