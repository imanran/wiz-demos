resource "aws_s3_bucket" "aws_example_bucket" {
  bucket_prefix = "aws-example-bucket"
}


resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.aws_example_bucket.id
  key    = "data.csv"
  source = "./data.csv"
}
