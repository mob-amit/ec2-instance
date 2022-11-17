provider "aws" {
    region = var.aws_region
}

resource "aws_instance" "ec2-instance" {
    ami = var.ami_id    # referring to ami_id variable
    instance_type = var.instance_type  # referring to instance_type variable
    counts = var.count
    vpc_security_group_ids = [aws_security_group.mysg.id]
}

resource "aws_security_group" "mysg" {
    name = "allow-ssh"
    description = "Allow ssh traffic"
    vpc_id = var.vpc_id   # referring to vpc_id variable

    ingress {
        description = "Allow inbound ssh traffic"
        from_port = var.port
        to_port = var.port
        protocol = "tcp"
        cidr_blocks = [var.cidr_block]
    }

    tags = {
        name = "allow_ssh"
    }
}
