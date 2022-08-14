output "ec2_public_ip" {
  value = aws_instance.ec2_demo.public_ip


}
output "ec2_private_ip" {
  value = aws_instance.ec2_demo.private_ip


}