resource "aws_instance" "web-server-instance" {
    ami="ami-08970fb2e5767e3b8"
    instance_type = "t2.micro"
    availability_zone = "us-west-2a"
    key_name="newkey"
    network_interface {
      device_index=0
      network_interface_id=aws_network_interface.web-server-nic.id
    }
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update
              sudo yum install python3 -y
              sudo yum install python3-pip
              pip3 install ansible --user
              
              sudo yum -y install ansible
              sudo yum install httpd -y
              sudo yum install ansible -y
              
              
              EOF
              tags = {
                Name = "ansible"
              }
}
