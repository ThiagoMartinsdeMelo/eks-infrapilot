aws_region              = "us-east-1"
instance_type           = "t3.medium"
instance_class          = "db.t3.micro"
db_engine               = "mysql"
use_spot                = false
multi_az                = true
backup_retention_period = 7
environment             = "prd"