 user_data = <<-EOF
              #!/bin/bash

              dnf update -y

              dnf install -y java-17-amazon-corretto

              useradd -r -m -U -d /opt/tomcat -s /bin/false tomcat

              cd /tmp

              wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.46/bin/apache-tomcat-10.1.46.tar.gz

              mkdir -p /opt/tomcat

              tar -xzf apache-tomcat-10.1.46.tar.gz -C /opt/tomcat --strip-components=1

              chown -R tomcat:tomcat /opt/tomcat

              chmod +x /opt/tomcat/bin/*.sh

              cat > /etc/systemd/system/tomcat.service <<'SERVICE'
              [Unit]
              Description=Apache Tomcat
              After=network.target

              [Service]
              Type=forking
              User=tomcat
              Group=tomcat

              Environment="JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto"
              Environment="CATALINA_HOME=/opt/tomcat"
              Environment="CATALINA_BASE=/opt/tomcat"

              ExecStart=/opt/tomcat/bin/startup.sh
              ExecStop=/opt/tomcat/bin/shutdown.sh

              Restart=on-failure

              [Install]
              WantedBy=multi-user.target
              SERVICE

              systemctl daemon-reload
              systemctl enable tomcat
              systemctl start tomcat
              EOF