# resource "aws_instance" "first_instance" {
#   ami                     = "ami-06c68f701d8090592"
#   instance_type           = "t2.micro"
#   tags = {
#     Name = "first_instance"
#   }
# }
# resource "aws_eip" "lb"{
#  domain = "vpc"
# }
# output "ip"{
#  value = aws_eip.lb.public_ip
# }
# output "url"{
#  value = "https://${aws_instance.first_instance.public_ip}:8080"
# }
# output "all_attributes" {
#  value = aws_instance.first_instance
# }
# resource "aws_security_group" "allow_tls" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic and all outbound traffic"
#   tags = {
#     Name = "allow_tls"
#   }
# }
# resource "aws_vpc_security_group_ingress_rule" "SG_443" {
#   security_group_id = aws_security_group.allow_tls.id
#   cidr_ipv4         = var.SG_ip
#   from_port         = 443
#   ip_protocol       = "tcp"
#   to_port           = 443
#   tags = {
#     Name = "for 443"
#   }
# }
# resource "aws_vpc_security_group_ingress_rule" "SG_80" {
#   security_group_id = aws_security_group.allow_tls.id
#   cidr_ipv4         = var.SG_ip
#   from_port         = 80
#   ip_protocol       = "tcp"
#   to_port           = 80
#   tags = {
#     Name = "for 80"
#   }
# }
# resource "aws_vpc_security_group_ingress_rule" "SG_22" {
#   security_group_id = aws_security_group.allow_tls.id
#   cidr_ipv4         = var.SG_ip
#   from_port         = 22
#   ip_protocol       = "tcp"
#   to_port           = 22
#   tags = {
#     Name = "for 22"
#   }
# }
# resource "aws_instance" "replace" {
#   ami                     = "ami-06c68f701d8090592"
#   instance_type           = "t2.micro"
#   tags = {
#     Name = "second_instance"
#   }
# }
