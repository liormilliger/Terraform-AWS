output "VPC_ID" {
  description = "VPC id for liorm-TF-easy-vpc"
  value       = aws_vpc.liorm-TF.id
}

output "Public-IPs-1a" {
  description = "Public IPs for instances"
  value       = aws_instance.liorm-EC2-1a[*].public_ip
}

output "Public-IPs-1b" {
  description = "Public IPs for instances"
  value       = aws_instance.liorm-EC2-1b[*].public_ip
}

output "load_balancer_dns" {
  description = "DNS Name for Load Balancer"
  value = aws_lb.liorm-TF.dns_name
}

