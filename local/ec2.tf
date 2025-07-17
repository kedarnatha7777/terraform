resource "aws_instance" "expense" {
  ami                     = local.ami_id
  instance_type           =  local.instance_type
  vpc_security_group_ids  = [local.sg_id]
  tags = local.tags   
 
}

