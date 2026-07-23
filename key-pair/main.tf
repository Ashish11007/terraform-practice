resource "aws_key_pair" "key" {
    key_name = "mykey"
    public_key = file("/root/terraform-practice/key-pair/mykey.pub")
}

resource "aws_security_group" "ssh"{

    name= "allow-ssh"
    ingress {
        from_port = 22
        to_port = 22
        protocol= "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_instance" "server" {
    ami= ""
    instance_type= "t3.micro"
    key_name = aws_key_pair.key.key_name
    vpc_security_group_ids = [aws_security_group.ssh.id]
    tags = {
      Name= "terraform-ec2"
    }
}