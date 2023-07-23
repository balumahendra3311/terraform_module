resource "aws_vpc" "ntier" {
    cidr_block = var.vpc_details.cidr_block
    tags = {
      Name= var.vpc_details.Name
    }
  
}
resource "aws_subnet" "subnets" {
    vpc_id = aws_vpc.ntier.id
    count = length(var.subnet_details.subnet_tags)
    cidr_block = cidrsubnet(var.vpc_details.cidr_block,8,count.index)
    availability_zone = var.subnet_details.subnet_azs[count.index]
    tags = {
        Name= var.subnet_details.subnet_tags[count.index]
    }
 
  
}