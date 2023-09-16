output "VPC_ID" {
  description = "VPC id for liorm-TF-easy-vpc"
  value       = aws_vpc.liorm-TF-easy-vpc.id
}

output "RT_ID" {
  description = "Route Table ID"
  value       = aws_route_table.liorm-TF-easy-RT.id
}

output "SUBNET_1A" {
  description = "us-east-1a subnet"
  value       = aws_subnet.liorm-TF-easy-us-east-1a.id
}

output "SUBNET_1B" {
  description = "us-east-1b subnet"
  value       = aws_subnet.liorm-TF-easy-us-east-1b.id
}

output "TG_ARN" {
  description = "Target Group Amazon Resource Name (ARN)"
  value       = aws_lb_target_group.liorm-TF-easy-ALB-TG.arn
}
