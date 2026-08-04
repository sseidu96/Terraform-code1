sudo yum install -y httpd
sudo systemctl start httpd 
sudo systemctl enable httpd
echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html
echo '<h2>Written by Safiatu Seidu<h2>' | sudo tee -a /var/www/html/index.html