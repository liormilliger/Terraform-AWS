variable "AMI" {
  type        = string
  description = "Image for ubuntu instance"
}

variable "TYPE" {
  type        = string
  description = "Instance type"
}

variable "HOME_IP" {
  description = "IP address at home"
  type        = string
}


variable "KARMI_IP" {
  description = "IP at KARMI house"
  type        = string
}
