 resource "aws_route_table_association" "a" {
    subnet_id=aws_subnet.subnet-1.id
    route_table_id = aws_route_table.prod-route-table.id
 }
 resource "aws_route_table_association" "b" {
    subnet_id=aws_subnet.subnet-2.id
    route_table_id = aws_route_table.prod-route-table.id
   
 }

 resource "aws_route_table_association" "c" {
    subnet_id=aws_subnet.subnet-3.id
    route_table_id = aws_route_table.prod-route-table-1.id
   
 }
 resource "aws_route_table_association" "d" {
    subnet_id=aws_subnet.subnet-4.id
    route_table_id = aws_route_table.prod-route-table-1.id
   
 }
 resource "aws_route_table_association" "e" {
    subnet_id=aws_subnet.subnet-5.id
    route_table_id = aws_route_table.prod-route-table-1.id
   
 }
 resource "aws_route_table_association" "f" {
    subnet_id=aws_subnet.subnet-6.id
    route_table_id = aws_route_table.prod-route-table-1.id
   
 }