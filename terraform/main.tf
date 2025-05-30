
provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "weatherapp" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  key_name      = "id_rsa_internship"

  tags = {
    Name = "weatherapp-instance"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y python3-pip",
      "curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -",
      "sudo apt install -y nodejs docker.io docker-compose"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      host        = self.public_ip
    }
  }
}
