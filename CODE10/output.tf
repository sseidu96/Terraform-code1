output "public_ip" {
  description = "Public IP address of the Splunk server"
  value       = aws_lightsail_instance.Splunk.public_ip_address
}

output "private_ip" {
  description = "Private IP address of the Splunk server"
  value       = aws_lightsail_instance.Splunk.private_ip_address
}

output "instance_id" {
  description = "Lightsail instance ID"
  value       = aws_lightsail_instance.Splunk.id
}

output "instance_name" {
  description = "Lightsail instance name"
  value       = aws_lightsail_instance.Splunk.name
}

output "instance_arn" {
  description = "Lightsail instance ARN"
  value       = aws_lightsail_instance.Splunk.arn
}

output "username" {
  description = "Default SSH username"
  value       = aws_lightsail_instance.Splunk.username
}

output "key_pair_name" {
  description = "SSH key pair name"
  value       = aws_lightsail_instance.Splunk.key_pair_name
}

output "availability_zone" {
  description = "Availability Zone"
  value       = aws_lightsail_instance.Splunk.availability_zone
}

output "splunk_web_url" {
  description = "URL to access the Splunk Web interface"
  value       = "http://${aws_lightsail_instance.Splunk.public_ip_address}:8000"
}