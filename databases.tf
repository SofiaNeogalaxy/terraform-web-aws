resource "aws_db_instance" "mysql" {
  identifier                = "mysql-db"
  engine                    = "mysql"
  allocated_storage         = 20
  instance_class            = "db.t2.micro"
  name                      = "mysql-db-instance"
  username                  = "admin"
  password                  = "password"
}
