# Application Definition 
app_name        = "new-service" # Do NOT enter any spaces
app_environment = "dev"      # Dev, Test, Staging, Prod, etc

# Network
#vpc_cidr           = "10.11.0.0/16"
#public_subnet_cidr = "10.11.1.0/24"

# AWS Settings
aws_region = "us-east-1"

# Linux Virtual Machine
linux_instance_type               = "t3a.small"
linux_associate_public_ip_address = true
linux_root_volume_size            = 30
linux_root_volume_type            = "gp3"
