terraform {
  backend "s3" {
    bucket         = "my-tf-test-bucket-harshal"
    key            = "terraformstatefile/statefileRDS"
    region         = "ap-south-1"
    dynamodb_table = "terraform-backend-statefile"

  }
}