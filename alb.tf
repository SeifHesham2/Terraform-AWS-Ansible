resource "aws_lb" "main_alb" {
  name                       = "main-alb"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.alb_sg.id]
  subnets                    = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]
  enable_deletion_protection = false
}

resource "aws_lb_target_group" "main-target-group" {
  name     = "main-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
}


resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.main_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main-target-group.arn
  }
}
