resource "aws_instance" "expense" {
  for_each = var.instance_names
  ami                     = data.aws_ami.ami_info.id
  instance_type           =  each.value 
  vpc_security_group_ids  = ["sg-03f21aa5a87126243"]
 tags = merge (
    var.common_tags,
    {
        Name = each.key
        module = each.key 
    }
 )
 
}