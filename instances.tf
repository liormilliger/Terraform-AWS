resource "aws_instance" "liorm-TF-easy-EC2-1a" {
  ami           = ${var.AMI}
  instance_type = "t3.micro"
  key_name = aws_key_pair.liorm-tf-key.id
  subnet_id     = ${var.SUBNET_1A} 
  availability_zone = "us-east-1a"
  vpc_security_group_ids = ${var.SG}

  tags = {
    Name = "liorm-TF-easy-instance-1a"
  }
}

resource "aws_instance" "liorm-TF-easy-EC2-1b" {
  ami           = ${var.AMI}
  instance_type = "t3.micro"
  key_name = aws_key_pair.liorm-tf-key.id
  subnet_id     = ${var.SUBNET_1B} 
  availability_zone = "us-east-1b"
  vpc_security_group_ids = ${var.SG}

  tags = {
    Name = "liorm-TF-easy-instance-1b"
  }
}
