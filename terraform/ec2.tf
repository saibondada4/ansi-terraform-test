resource "aws_instance" "eistest_instance" {
    count=var.instance_count
    ami = "${var.ec2_ami}"
    instance_type = "${var.instance_type}"
    subnet_id = "${aws_subnet.eistest_subnet_public.id}"
    key_name = "eistestweb"
    vpc_security_group_ids = ["${aws_security_group.eistest_sg.id}"]
    root_block_device{
        volume_size=30
    }
    tags = {
        Name = "eistest-instance-${count.index}"   
    }  
}
