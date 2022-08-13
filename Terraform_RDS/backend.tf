terraform {
  backend "s3" {
    bucket         = "terraform-backend-files-nk"
    key            = "terraformstatefile/statefileRDS"
    region         = "ap-south-1"
    dynamodb_table = "terraform_backend_statefile"

  }
}