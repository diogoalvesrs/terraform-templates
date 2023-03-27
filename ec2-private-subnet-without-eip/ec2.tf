
###################################
## Virtual Machine Module - Main ##
###################################

# Create EC2 Instance
resource "aws_instance" "ec2_instance" {
  ami                         = var.linux_ami
  instance_type               = var.linux_instance_type
  subnet_id                   = var.subnet_id 
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = var.linux_associate_public_ip_address
  source_dest_check           = false
  key_name                    = var.key_name
  #user_data                   = file("aws-user-data.sh")
  iam_instance_profile = var.role_ec2_basico_gerenciamento

  # root disk
  root_block_device {
    volume_size           = var.linux_root_volume_size
    volume_type           = var.linux_root_volume_type
    delete_on_termination = true
    encrypted             = true
  }

  tags = {
    Name           = "[organization] ${(var.app_name)} ${var.app_environment}"
    Environment    = var.app_environment
    Billing        = var.billing_organization
    Managed-by     = "Terraform"
    Gerenciado-por = "Terraform"
    #Liga           = "1" ### ATIVAR CASO NECESSÁRIO ###
    #Desliga        = "1" ### ATIVAR CASO NECESSÁRIO ###
  }
}

# Create security group for EC2
resource "aws_security_group" "ec2_sg" {
  name        = "${(var.app_name)}-${var.app_environment}-sg"
  description = "Permite as comunicacoes com a EC2 ${(var.app_name)} ${var.app_environment}"
  vpc_id      = var.vpc_id

  tags = {
    Name           = "${(var.app_name)}-sg"
    Service        = "${(var.app_name)} ${var.app_environment}"
    Managed-by     = "Terraform"
    Gerenciado-por = "Terraform"
  }

  ingress {
    description = "Zabbix Server"
    from_port   = 10050
    to_port     = 10051
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Zabbix Server"
    from_port   = 10050
    to_port     = 10051
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}
