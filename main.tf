terraform{
    prvider=aws
}
resource "aws_launch_template" "example" {
  name_prefix = "example-launch-template"

  image_id = "ami-0c802847a7dd848c0"
  instance_type = "t2.micro"
  key_name = "example-key"

  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      volume_size = 20
      volume_type = "gp3"
    }
  }

  vpc_security_group_ids = ["sg-xxx"]

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "example-template"
    }
  }
}