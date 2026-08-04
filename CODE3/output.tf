output "My-public-ip" {
  value = aws_lightsail_instance.Linux.public_ip_address
}

output "My_arn_number" {
  value = aws_lightsail_instance.Linux.arn
}

output "My_key_pair_name" {
  value = aws_lightsail_instance.Linux.key_pair_name
}

output "my_instance_id" {
  value = aws_lightsail_instance.Linux.id
}

output "my_instance_username" {
  value = aws_lightsail_instance.Linux.username
}

output "my_private_ip" {
  value = aws_lightsail_instance.Linux.private_ip_address
}