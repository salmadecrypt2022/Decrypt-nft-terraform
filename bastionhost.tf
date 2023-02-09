 resource "aws_instance" "bastionhost" {
    ami= "ami-08970fb2e5767e3b8"
    instance_type = "t2.micro"
    
   tags={
    Name="bastionhost"
   }
 }