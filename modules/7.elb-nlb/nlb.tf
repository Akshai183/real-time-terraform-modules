resource "aws_lb" "test" {
  name               = var.nlbname
  internal           = false
  load_balancer_type = "network"
  subnets            = var.subnets
  enable_deletion_protection = false
  tags = {
    Environment = var.env
  }
}

resource "aws_lb_target_group" "test" {
  name     = var.tgname
  port     = 80
  protocol = "TCP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_target_group_attachment" "test" {
  count = var.env == "Production" || var.env == "Prod" ? 3 : 1
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = "${element(var.private_servers, count.index)}"
  port             = 80
}