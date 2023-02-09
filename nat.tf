resource "aws_nat_gateway" "example" {
  allocation_id = "eipalloc-0c59d775fc1ebc725"
  subnet_id     = aws_subnet.subnet-3.id

  tags = {
    Name = "My-NAT"
  }

  
  
  depends_on = [aws_internet_gateway.gw]
}