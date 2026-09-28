output "web_public_ip" {
  description = "Public IP of the web server"
  value       = module.ec2.public_ip
}
