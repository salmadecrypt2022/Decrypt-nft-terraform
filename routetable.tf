 resource "aws_route_table" "prod-route-table" {
    vpc_id = aws_vpc.prod-vpc.id
    route {
        cidr_block= "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gw.id
    }
    tags= {
        Name= "publicrt"
    }
   
 }
 resource "aws_route_table" "prod-route-table-1" {
    vpc_id= aws_vpc.prod-vpc.id
    route {
        cidr_block = "0.0.0.0/8"
        
        nat_gateway_id = aws_nat_gateway.example.id
    }
  
  tags={
    Name="privatert"
  }
}