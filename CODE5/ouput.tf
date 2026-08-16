output "pip" {
  value = aws_lightsail_instance.example.public_ip_address
}

output "privip" {
  value = aws_lightsail_instance.example.private_ip_address
}