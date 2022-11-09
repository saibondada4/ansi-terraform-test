# Terraform

##### 1. Create simple infratructure in AWS using terraform
 - 1.1. Create custom VPC, subnets, security groups
 - 1.2. Create 2 simmilar instances with Centos/Amazon Linux2 and Ubuntu
 - 1.3. Make them accessible from the internet by the web browser
##### Terraform Resources

  - VPC
  - Subnets
  - Route Tables
  - Internet Gateway
  - Routings
  - Route Table Subnet Associations
  - Security Groups
  - 2 EC2 Instances
### Commands
```sh
# Clone ansi-terraform-test repository
$ git clone https://github.com/saibondada4/ansi-terraform-test
$ cd ansi-terraform-test

# Export Keys for AWS Access for terraform provider
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-east-1"

# Initialize a new or existing Terraform configuration
$ terraform init

# Generate and show an execution plan
$ terraform plan

# Builds or changes infrastructure
$ terraform apply

# Read an output from a state file for IPs
$ terraform output

# Inspect Terraform state or plan
$ terraform show
```
