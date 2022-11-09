resource "aws_internet_gateway" "eistest_igw" {
    vpc_id = "${aws_vpc.eistest_vpc.id}"

    tags = {
        Name = "eistest-igw"
    }
}