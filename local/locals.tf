# locals can holds some expression 
locals {
   ami_id = "ami-09c813fb71547fc4f"
   sg_id = "sg-03f21aa5a87126243"
   instance_type = var.instance_names == "db" ? "t3.small" : "t3.micro" 
   tags = {
    Name= "locals_lo"
   }

}
