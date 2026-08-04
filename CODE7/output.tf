output "my-key_pair_name" {
  value = aws_lightsail_instance.Test.key_pair_name
}

output "private-ip" {
    value = aws_lightsail_instance.Test.private_ip_address
  
}

output "public-ip" {
    value = aws_lightsail_instance.Test.public_ip_address
  
}