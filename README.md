TechGenei-Travel-agency
1. Containerize the application and deploy on AWS
2. Setup CI/CD using Codepipeline for the application deployment.


Launch EC2 instance and install docker 


Create folder src and take pull  from github

Create Database in RDS and import tagency.sql file in database





Dockerfile 

FROM php:7.4-apache
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY start-apache /usr/local/bin
RUN chmod 777 /usr/local/bin/start-apache
RUN docker-php-ext-install mysqli
RUN a2enmod rewrite
COPY src/ /var/www/html
RUN chown -R www-data:www-data /var/www
CMD ["start-apache"]




Create ECR Repo 

Push commands 

Aws Config need to setup

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 982895218397.dkr.ecr.ap-south-1.amazonaws.com

docker build -t dockerrepo .

docker tag dockerrepo:latest 982895218397.dkr.ecr.ap-south-1.amazonaws.com/dockerrepo:latest

docker push 982895218397.dkr.ecr.ap-south-1.amazonaws.com/dockerrepo:latest


This commands push docker images into ECR

Create Task Defination





Create Cluster and Service and Application LoadBalancer







Now, CICD through CodeCommit (Git) + Code Build + Code Deploy + Code Pipeline 

Create CodeCommit Repo and Add Below Files 






Create CodeBuld





Create CodeDeploy







Create CodePipeline















Go to ECS Task will be up 





Go to LoadBalancer and add Path base routing 











