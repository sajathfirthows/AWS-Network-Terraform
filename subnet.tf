resource "aws_subnet" "mysubnet" {
  count             = 3
  vpc_id            = aws_vpc.my-saja-vpc.id
  cidr_block        = element(var.subnet_cidr_blocks, count.index)
  availability_zone = "us-east-1a"
}
