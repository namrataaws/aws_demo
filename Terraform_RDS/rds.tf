resource "aws_db_instance" "db_application" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.28"
  instance_class       = "db.t3.micro"
  name                 = "db_name"
  username             = "namratards"
  password             = "namrataloveskashvi"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}