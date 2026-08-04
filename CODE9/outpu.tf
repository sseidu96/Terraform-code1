output "public_ip" {
  value = aws_lightsail_instance.Linux.public_ip_address
}


output "instance_id" {
  value = aws_lightsail_instance.Linux.id
}


output "instance_arn" {
  value = aws_lightsail_instance.Linux.arn
}


output "key_pair_name" {
  value = aws_lightsail_instance.Linux.key_pair_name
}


output "username" {
  value = aws_lightsail_instance.Linux.username
}