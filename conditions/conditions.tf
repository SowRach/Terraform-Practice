resource "aws_instance" "web" {
  ami           = var.ami_id # devops-practice
  instance_type = var.instance_name == "MongoDB" ? "t3.small" : "t2.micro"
                 # condition in terraform if true ? value 1 if not true value 2
  #vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  #tags = var.tags
} 