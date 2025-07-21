resource "aws_instance" "expense" {
  ami                     = "ami-09c813fb71547fc4f"
  instance_type           =  "t3.micro"
  vpc_security_group_ids  = ["sg-03f21aa5a87126243"]
 tags = {
    Name = "DB"
 }
}