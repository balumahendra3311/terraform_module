variable "vpc_details" {
    type = object({
      region = string
      cidr_block= string
      Name= string
    })
  
}
variable "subnet_details" {
    type = object({
      subnet_azs= list(string)
      subnet_tags= list(string)
    })
  
}