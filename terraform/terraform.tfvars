instance_type = "t2.micro"


resource "aws_instance" "this" {
  ami                     = local.instance_ami
  instance_type           = var.instance_type
}

resource "aws_instance" "import1" {
  ami                     =  local.instance_ami
  
  instance_type           = var.instance_type
  tags = {
    Name = "import"
  }
} 