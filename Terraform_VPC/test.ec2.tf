resource "aws_instance" "ec2_demo" {
  ami                    = "ami-076e3a557efe1aa9c"
  instance_type          = "t2.micro"
  key_name               = "namratakey"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.vpc_demo_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "For_VPC_Testing"
  }

  user_data = <<-EOF
              #!/bin/bash
                yum update -y
                yum install -y httpd
                systemctl start httpd.service
                systemctl enable httpd.service
                echo "Welcome to VPC Demo!!!, I am $(hostname -f) hosted by Terraform" > /var/www/html/index.html
              EOF

}