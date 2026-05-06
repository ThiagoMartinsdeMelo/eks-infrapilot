locals {
  lb_name = replace(lower(var.name), "_", "-")
}

resource "aws_lb" "this" {
  name               = local.lb_name
  load_balancer_type = "application"
  subnets            = var.subnet_ids
  security_groups    = var.security_group_ids
  tags               = merge(var.tags, { Name = local.lb_name, Environment = var.environment })
}

resource "aws_lb_target_group" "this" {
  name        = "${local.lb_name}-tg"
  port        = var.target_port
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = var.vpc_id
  tags        = merge(var.tags, { Name = "${local.lb_name}-tg", Environment = var.environment })

  health_check {
    path                = var.health_check_path
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.this.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}