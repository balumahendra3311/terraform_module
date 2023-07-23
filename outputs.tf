output "vpc_id" {
    value=aws_vpc.ntier.id
  
}
output "subnets" {
    value = aws_subnet.subnets
  
}

