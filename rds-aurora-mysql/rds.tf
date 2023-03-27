#############################################
###              RDS Module               ###
#############################################

resource "aws_db_instance" "db_instance" {
  allocated_storage       = var.allocated_storage
  storage_type            = var.storage_type
  engine                  = "aurora-mysql"
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  name                    = "${(var.db_name)}-${(var.app_environment)}"
  username                = var.user_name
  password                = var.password
  parameter_group_name    = "organization-${(var.db_name)}-${(var.app_environment)}"
  db_subnet_group_name    = var.subnet_group_name
  identifier              = var.app_name
  skip_final_snapshot     = true
  publicly_accessible     = false
  vpc_security_group_ids  = [aws_security_group.rds_sg.id]
  backup_retention_period = 2
  backup_window           = "06:00-06:30"
  maintenance_window      = "Tue:04:00-Tue:05:00"
  multi_az                = true
  kms_key_id              = "arn:aws:kms:us-east-1:814635504079:key/70668730-b0cf-47dc-8c5c-c9f3b83cc2a4"
  storage_encrypted       = true
  
  tags = {
    Env            = var.env_tag
    Service        = "RDS"
    Billing        = var.billing_tag
    Name           = var.app_name
    Managed-by     = "Terraform"
    Gerenciado-por = "Terraform"
  }
}

# Create security group
resource "aws_security_group" "rds_sg" {
  name        = "${var.app_name}-sg"
  description = "Access to RDS"
  vpc_id      = var.sg_vpc

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["172.18.0.0/16"]
    description = "Enables access to the RDS from VPC xxxx"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Env            = var.env_tag
    Service        = "RDS"
    Billing        = var.billing_tag
    Name           = "${var.app_name}-sg"
    Managed-by     = "Terraform"
    Gerenciado-por = "Terraform"
  }
}
