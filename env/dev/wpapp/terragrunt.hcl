terraform {
    source = "git::git@github.com:ArunaLakmal/Terraform-Wordpress-Stage-Modules.git//wpapp?ref=v0.01"
}

inputs = {
    aws_profile = "superhero"
aws_region  = "us-east-1"
vpc_cidr    = "10.0.0.0/16"
cidrs = {
  public1  = "10.0.1.0/24"
  public2  = "10.0.2.0/24"
  private1 = "10.0.3.0/24"
  private2 = "10.0.4.0/24"
  rds1     = "10.0.5.0/24"
  rds2     = "10.0.6.0/24"
  rds3     = "10.0.7.0/24"
}
localip                 = "0.0.0.0/0"
domain_name             = "cmcloudlab885"
db_instance_class       = "db.t2.micro"
dbname                  = "superherodb"
dbuser                  = "superhero"
dbpassword              = "superheropass"
dev_instance_type       = "t2.micro"
dev_ami                 = "ami-00eb20669e0990cb4"
public_key_path         = "/root/.ssh/ironman.pub"
key_name                = "ironman"
elb_healthy_threshold   = "2"
elb_unhealthy_threshold = "2"
elb_timeout             = "3"
elb_interval            = "30"
asg_max                 = "2"
asg_min                 = "1"
asg_grace               = "300"
asg_hct                 = "EC2"
asg_cap                 = "2"
lc_instance_type        = "t2.micro"
}