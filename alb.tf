resource "aws_lb" "test" {
  name               = "myalb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_web.id]
  subnets = ["subnet-087211cfebddbf419","subnet-0b079b345b0e32efe"]

  enable_deletion_protection = true

  

  tags = {
    Environment = "production"
  }
}