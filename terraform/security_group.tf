resource "aws_security_group" "eistest_sg" {
  name        = "eistest_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.eistest_vpc.id}"


  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 80
    to_port     = 80 
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 443
    to_port     = 443 
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 22
    to_port     = 22 
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "eistest-sg"
  }
}