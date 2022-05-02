#configure provider

provider "aws" {
  region ="us-east-1"
  access_key ="AKIA2NS2KYS5VV3MZ57L"
  secret_key = "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"
}
#resource
resource "aws_instance" "httpd" {
  ami = "ami-02358d9f5245918a3"
  instance_type = "t2.micro"
  key_name = "2203-1"
  user_data = file("install.sh")
  
  tags = {
   Name = "Web-Server"
  } 
}

