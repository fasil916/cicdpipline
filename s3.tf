provider "aws" {
   region     = "us-east-1"
    access_key = "AKIA2O2PFYHDCXHL774Q"
    
    secret_key = "y3QCZGDLHqfEJGxV4RoLQZNG/HRqzIdTophHari3"
}

resource "aws_s3_bucket" "example" {
  bucket = "fazzzzz"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
