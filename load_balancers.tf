resource "aws_elb" "web" {
  name = "web-elb"
  subnets = [aws_subnet.public.id]
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }
}

resource "aws_elb_attachment" "web" {
  elb_id         = aws_elb.web.id
  instance_id    = aws_instance.web.id
  attachment_id  = "web-elb-attachment"
}
