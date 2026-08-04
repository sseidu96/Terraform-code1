output "My-public-ip" {
  value = aws_lightsail_instance.Linux.public_ip_address
}

output "My_arn_number" {
  value = aws_lightsail_instance.Linux.arn
}

output "My_key_pair_name" {
  value = aws_lightsail_instance_Linux.key_pair_name
}

output "my_id_number" {
    value = aws_lightsail_instance_Linux.id_number
}  

