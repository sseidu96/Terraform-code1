output "tomcat_public_ip" {
  value = aws_instance.tomcat_server.public_ip
}

output "tomcat_url" {
  value = "http://${aws_instance.tomcat_server.public_ip}:8080"
}
