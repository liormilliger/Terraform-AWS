resource "aws_lb_target_group" "liorm-TF-easy-ALB-TG" {
  name     = "liorm-TF-easy-ALB-TG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "${var.VPC}"
}

resource "aws_lb_target_group_attachment" "liorm-tg-attach-1a" {
  target_group_arn = "${var.TG_ARN}"
  target_id        = aws_instance.liorm-TF-easy-EC2-1a.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "liorm-tg-attach-1b" {
  target_group_arn = "${var.TG_ARN}"
  target_id        = aws_instance.liorm-TF-easy-EC2-1b.id
  port             = 80
}

resource "aws_lb" "liorm-TF-ALB" {
  name               = "liorm-TF-ALB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ${var.SG}
  subnets            = ["${var.SUBNET_1A}", "${var.SUBNET_1B}"]
  enable_deletion_protection = false

  tags = {
    Name = "liorm-TF-ALB"
  }
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.liorm-TF-ALB.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${var.TG_ARN}"
  }
}
