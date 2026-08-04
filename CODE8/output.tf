output "my-public_ip" {
  value = aws_lightsail_instance.web-Server.public_ip_address
}

output "instance_username" {
  value = aws_lightsail_instance.web-Server.username
}

output "private_ip_address" {
  value = aws_lightsail_instance.web-Server.private_ip_address
}

