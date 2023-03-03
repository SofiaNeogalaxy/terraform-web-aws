variable "aws_access_key" {
  description = "The access key for the AWS account."
}

variable "aws_secret_key" {
  description = "The secret key for the AWS account."
}

variable "region" {
  description = "The region in which to create resources."
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  default     = "t2.micro"
}

variable "db_engine" {
  description = "The type of database engine to use."
  default     = "mysql"
}

variable "db_name" {
  description = "The name of the database to create."
  default     = "my_database"
}

variable "db_username" {
  description = "The username for the database."
  default     = "admin"
}

variable "db_password" {
  description = "The password for the database."
  default     = "password"
}

variable "web_elb_name" {
  description = "The name of the Elastic Load Balancer for the web tier."
  default     = "web-elb"
}

variable "web_instance_name" {
  description = "The name of the EC2 instance for the web tier."
  default     = "web-instance"
}

variable "web_security_group_name" {
  description = "The name of the security group for the web tier."
  default     = "web-security-group"
}

variable "db_security_group_name" {
  description = "The name of the security group for the database tier."
  default     = "db-security-group"
}

