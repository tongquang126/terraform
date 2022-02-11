resource "aws_instance" "my_ec2" {
  ami           = "ami-0a8b4cd432b1c3063" 
  instance_type = "t2.micro"
}

output "instance_ip_addr" {
  value = aws_instance.my_ec2.private_ip
}
