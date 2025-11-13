provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "autodeployx" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

   user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install docker -y
              service docker start
              docker pull suha.../autodeployx:latest
              docker run -d -p 80:80 suha.../autodeployx:latest
              EOF

  tags = {
    Name = "AutoDeployX-Instance"
  }
}
