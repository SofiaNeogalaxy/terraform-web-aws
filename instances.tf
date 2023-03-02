resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "mykeypair"
  vpc_security_group_ids = [aws_security_group.web.id]
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "Web Instance"
  }
}

output "web_instance_public_ip" {
  value = aws_instance.web.public_ip
}
