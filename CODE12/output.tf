output "public_ip" {
  value = aws_instance.httpd_server.public_ip
}

output "public_dns" {
  value = aws_instance.httpd_server.public_dns
}