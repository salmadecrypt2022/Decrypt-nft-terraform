resource "aws_lb_target_group" "test" {
  name     = "mytargetgroup"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.prod-vpc.id
  
}
