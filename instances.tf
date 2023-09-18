resource "aws_key_pair" "liorm-tf-key_rsa" {
  key_name   = "liorm-tf-key_rsa"
  public_key = file("~/.ssh/liorm-tf-key_rsa.pub")
}

resource "aws_instance" "liorm-EC2-1a" {
  count = 2

  ami                    = var.AMI
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.liorm-tf-key.id
  subnet_id              = aws_subnet.liorm-us-east-1a.id
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.liorm-TF-SG.id]

  tags = {
    Name = "liorm-EC2-1a"
  }
}

resource "aws_instance" "liorm-EC2-1b" {
  count = 2

  ami                    = var.AMI
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.liorm-tf-key.id
  subnet_id              = aws_subnet.liorm-us-east-1b.id
  availability_zone      = "us-east-1b"
  vpc_security_group_ids = [aws_security_group.liorm-TF-SG.id]

  tags = {
    Name = "liorm-EC2-1b"
  }
}
