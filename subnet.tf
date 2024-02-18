resource "aws_subnet" "subet-saj" {
  count             = 3
  vpc_id            = aws_vpc.my-saja-vpc.id
  cidr_block        = element(var.subnet_cidr_blocks, count.index)
  availability_zone = element(["us-east-1a", "us-east-1b", "us-east-1c"], count.index)
}
