resource "aws_instance" "example" {
  ami                    = "ami-0218d08a1f9dac831"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.example.id]
  iam_instance_profile   = aws_iam_instance_profile.example.name

  tags = {
    Name = "monitoring-example-ec2"
  }
}
