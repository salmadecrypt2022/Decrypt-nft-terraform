resource "aws_instance" "reactjs" {
    ami= "ami-0a36c5debfae59425"
    instance_type = "t2.micro"
    
    subnet_id = aws_subnet.subnet-5.id
    
    
    tags= {
        Name="reactjs"
    }
}