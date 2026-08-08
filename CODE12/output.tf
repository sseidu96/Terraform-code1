output "public_ip" {
  value = aws_instance.httpd_server.public_ip
}

output "public_dns" {
  value = aws_instance.httpd_server.public_dns
}

output "availability_zone" {
  value = aws_instance.httpd_server.availability_zone
}

output "private_ip" {
  value = aws_instance.httpd_server.private_ip
}

output "security_group" {
  value = aws_instance.httpd_server.security_groups
}