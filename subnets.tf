resource "aws_subnet" "public" {
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "private" {
  cidr_block = "10.0.2.0/24"
}

resource "aws_db_subnet_group" "default" {
  name        = "default"
  subnet_ids  = [aws_subnet.private.id]
}
