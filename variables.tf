variable "AMI" {
type = string
description = "Image for ubuntu instance"
}

variable "VPC_ID" {
type = string
description = "ID of my vpc"
}

variable "SG" {
description = "SG for liorm-TF-easy instances"
}

variable "RT_ID" {
type = string
description = "Route Table ID"
}

variable "SUBNET_1A" {
type = string
description = "us-east-1a subnet"
}

variable "SUBNET_1B" {
type = string
description = "us-east-1b subnet"
}

variable "TG_ARN" {
type = string
description = "Target Group Amazon Resource Name (ARN)"
}