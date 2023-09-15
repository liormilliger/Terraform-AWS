resource "aws_instance" "liorm-TF-easy-EC2-1a" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t3.micro"
  key_name = aws_key_pair.liorm-tf-key.id
  subnet_id     = aws_subnet.liorm-TF-easy-us-east-1a.id 
  availability_zone = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.liorm-TF-easy-SG.id]

  tags = {
    Name = "liorm-TF-easy-instance-1a"
  }
}

resource "aws_instance" "liorm-TF-easy-EC2-1b" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t3.micro"
  key_name = aws_key_pair.liorm-tf-key.id
  subnet_id     = aws_subnet.liorm-TF-easy-us-east-1b.id 
  availability_zone = "us-east-1b"
  vpc_security_group_ids = [aws_security_group.liorm-TF-easy-SG.id]

  tags = {
    Name = "liorm-TF-easy-instance-1b"
  }
}
