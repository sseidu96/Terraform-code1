resource "aws_instance" "tomcat_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = "livekey"
  user_data = file ("ApacheTomcat.sh")

  tags = {
    Name = "Tomcat-Server"
  }
}
 