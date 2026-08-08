output "nginx_public_ip" {
  description = "Public IP of Nginx server"
  value       = aws_lightsail_instance.nginx.public_ip_address
}


output "nginx_url" {
  description = "Nginx website URL"
  value       = "http://${aws_lightsail_instance.nginx.public_ip_address}"
}


output "instance_id" {
  value = aws_lightsail_instance.nginx.id
}