resource "aws_route_table" "eistest_rt_public" {
    vpc_id = "${aws_vpc.eistest_vpc.id}"
    tags = {
        Name = "eistest-rt-public"

    }
        
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.eistest_igw.id}"
    }  



}

resource "aws_route_table_association" "eistest_subnet_route_association" {
    subnet_id = "${aws_subnet.eistest_subnet_public.id}"
    route_table_id = "${aws_route_table.eistest_rt_public.id}" 
}