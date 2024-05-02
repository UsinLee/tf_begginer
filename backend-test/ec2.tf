resource "aws_instance" "web" {
  ami           = "ami-01c26a2481d1922c4"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
