resource "aws_subnet" "subnet-1" {
    vpc_id=aws_vpc.prod-vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-west-2a"
    tags = {
      Name = "public-subnet1"
    }
}
resource "aws_subnet" "subnet-2" {
    vpc_id=aws_vpc.prod-vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-west-2b"
    tags = {
      Name = "public-subnet2"
    }
}
resource "aws_subnet" "subnet-3" {
    vpc_id=aws_vpc.prod-vpc.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "us-west-2a"
    tags = {
      Name = "private-subnet1"
    }
}
resource "aws_subnet" "subnet-4" {
    vpc_id=aws_vpc.prod-vpc.id
    cidr_block = "10.0.4.0/24"
    availability_zone = "us-west-2b"
    tags = {
      Name = "private-subnet2"
    }
}
resource "aws_subnet" "subnet-5" {
    vpc_id=aws_vpc.prod-vpc.id
    cidr_block = "10.0.5.0/24"
    availability_zone = "us-west-2a"
    tags = {
      Name = "private-subnet3"
    }
}
resource "aws_subnet" "subnet-6" {
    vpc_id=aws_vpc.prod-vpc.id
    cidr_block = "10.0.6.0/24"
    availability_zone = "us-west-2b"
    tags = {
      Name = "private-subnet4"
    }
}