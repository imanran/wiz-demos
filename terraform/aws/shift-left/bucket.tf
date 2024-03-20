
resource "aws_s3_bucket" "aws_example_bucket" {
  bucket_prefix = "aws-example-bucket"
}


resource "aws_s3_bucket_policy" "bad_bucket_policy" {
  bucket = aws_s3_bucket.aws_example_bucket.id
  policy = <<POLICY
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "FromStackOverflow",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "*"
            }
    ]
}
POLICY
}
