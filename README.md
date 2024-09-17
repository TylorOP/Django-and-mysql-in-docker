# Django and MySQL Docker Setup

## Prerequisites
Before starting, ensure you have the following:

1. **Amazon EC2 Instance**: Launch an EC2 instance with all traffic allowed in the security group.
2. **Required Tools**: 
   - **Docker**: [Installation Guide](https://docs.docker.com/engine/install/ubuntu/)
   - **Docker Compose**: [Installation Guide](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04)
   - **Django**: [Installation Guide](https://www.digitalocean.com/community/tutorials/how-to-install-the-django-web-framework-on-ubuntu-22-04)

## Setup Instructions

### Step 1: Git clone
git clone url (copy past url) <br>
cd Django-and-mysql-in-docker


### Step 2: Pull or Download Files
Download or pull the necessary files and place them inside the created folder.

### Step 3: Basic Shell Scripting
Create a `.env` file by running:
vi .env
Copy and paste the environment variables into it. (as you can't see the file because it is hidden for security)

Step 4: (Optional) Set Execution Permissions
If you encounter errors regarding shell execution while running the container, grant execution permissions:
chmod +x create_superuser.sh

Step 5: Build and Run Docker Containers
Bring down any running containers and build your setup with:

docker-compose down   <br>
docker-compose up --build

Access the Django application at http://52.66.251.143:8000

http://52.66.251.143:8000/admin
enter your username and password

Access from local 
mysql -h 52.66.251.143 -P 8888 -u root -p


As i did port-mapping 8888 from outside with the container fo 3306
