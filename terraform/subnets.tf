resource "aws_subnet" "eistest_subnet_public" {
vpc_id = "${aws_vpc.eistest_vpc.id}"
cidr_block = "10.0.0.0/25"
 map_public_ip_on_launch=true
 
 tags = {
     Name = "eistest-subnet-public"
 }
 }