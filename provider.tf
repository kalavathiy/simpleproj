provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "myec2" {
  ami           = "ami-0800fc0fa715fdcfe"
  instance_type = "t2.micro"
}

