resource "aws_instance" "ec2"{
    ami= "ami-0e5497a77ef21b5ac"
    instance_type= "t3.micro"
    key_name= "k8s-project"
    tags= {
        name= "terraform-ec2"
    }
}

