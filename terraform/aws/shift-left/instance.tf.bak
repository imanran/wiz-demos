# Terraform Registry Example
#
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume

resource "aws_instance" "example_instance_for_ebs" {
  ami           = "ami-08e2c1a8d17c2fe17"
  instance_type = "t2.nano"
}

resource "aws_ebs_volume" "example_ebs_volume" {
  availability_zone = "us-west-2a"
  encrypted         = false
  size              = 1
}

resource "aws_volume_attachment" "example_volume_attachment" {
  device_name = "/dev/sdh"
  instance_id = aws_instance.example_instance_for_ebs.id
  volume_id   = aws_ebs_volume.example_ebs_volume.id
}
