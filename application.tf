resource "aws_lb_target_group" "liorm-TF" {
  name     = "liorm-TF-easy-ALB-TG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.liorm-TF.id
}

resource "aws_lb_target_group_attachment" "liorm-tg-attach-1a" {
  count = length(aws_instance.liorm-EC2-1a.*.id)
  target_group_arn = aws_lb_target_group.liorm-TF.arn
  target_id        = aws_instance.liorm-EC2-1a[count.index].id
  port             = 80
}

resource "aws_lb_target_group_attachment" "liorm-tg-attach-1b" {
  count = length(aws_instance.liorm-EC2-1b.*.id)
  target_group_arn = aws_lb_target_group.liorm-TF.arn
  target_id        = aws_instance.liorm-EC2-1b[count.index].id
  port             = 80
}

resource "aws_lb" "liorm-TF" {
  name               = "liorm-TF"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.liorm-TF-SG.id]
  subnets            = [aws_subnet.liorm-us-east-1a.id, aws_subnet.liorm-us-east-1b.id]

  enable_deletion_protection = false

  tags = {
    Name = "liorm-TF"
  }
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.liorm-TF.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.liorm-TF.arn
  }
}
