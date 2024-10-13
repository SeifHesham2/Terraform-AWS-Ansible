resource "aws_launch_template" "web_server_lt" {
  name_prefix   = "web-server-"
  image_id      = var.ami
  instance_type = var.instance_type

  key_name = var.ssh_key_name

  network_interfaces {
    security_groups             = [aws_security_group.webserver_sg.id]
    associate_public_ip_address = true
  }
}



resource "aws_autoscaling_group" "web_server_asg" {
  desired_capacity    = 2
  max_size            = 2
  min_size            = 2
  vpc_zone_identifier = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]

  launch_template {
    id      = aws_launch_template.web_server_lt.id
    version = "$Latest"
  }

  target_group_arns = [aws_lb_target_group.main-target-group.arn]

  tag {
    key                 = "Name"
    value               = "web-server"
    propagate_at_launch = true
  }
}
