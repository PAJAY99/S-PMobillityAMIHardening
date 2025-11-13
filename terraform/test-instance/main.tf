provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test" {
  ami           = "ami-xxxxxxxx"
  instance_type = "t3.micro"
  tags = {
    Name = "test-hardened-instance"
  }
}
