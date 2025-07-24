resource "aws_security_group" "roboshop-all" { # this is a terraform name for the reference only 
  name        = var.sg-name # this is aws name
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Allow all ports"
    from_port        = var.inbound-from-port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }

 }