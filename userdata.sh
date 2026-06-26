#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl enable httpd
systemctl start httpd

cat > /var/www/html/index.html <<HTML
<html>
<head>
<title>AWS EC2 Web Server</title>
</head>
<body>
<h1>Hello from Amazon EC2</h1>
<h2>EC2 Web Server Project</h2>

<p>This web server was installed automatically using EC2 user data.</p>

<h3>AWS Services Practiced</h3>
<ul>
<li>Amazon EC2</li>
<li>Security Groups</li>
<li>User Data</li>
<li>Apache Web Server</li>
<li>CloudWatch Monitoring</li>
</ul>

<h3>DevOps Skills Practiced</h3>
<ul>
<li>Server provisioning</li>
<li>Startup automation</li>
<li>Linux service management</li>
<li>Network access control</li>
<li>Basic monitoring</li>
</ul>
</body>
</html>
HTML
