resource "aws_instance" "nodejs" {
    ami= "ami-0a36c5debfae59425"
    instance_type = "t2.micro"
    
    subnet_id = aws_subnet.subnet-3.id
    
    
    tags= {
        Name="nodejs"
    }
}