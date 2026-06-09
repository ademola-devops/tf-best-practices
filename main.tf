resource "aws_s3_bucket" "adem-tf-test-bucket" {
  # changed to bucket prefix from bucket and added a - at the end to make it unique
  bucket_prefix = "adem-tf-test-bucket-"

  tags = {
    Name        = "adem-tf-test-bucket"
    Environment = "Dev"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage = 10
  db_name           = "mydb"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t3.micro"
  username          = "foo"

  # 🔐 This is the magic fix! No more hardcoded, it reads from the variables now
  password = var.db_password

  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}