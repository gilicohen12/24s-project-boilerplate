# Ashna Jain, Erika von Kirchbach, Gayatri Kondabathini, Gili Cohen, Greg Laursen
# Our video link: https://drive.google.com/file/d/1_1_DeuBELKsqQT0qhPCnajG59gIeTslQ/view
 
# MySQL + Flask Boilerplate Project

This repo contains a boilerplate setup for spinning up 3 Docker containers: 
1. A MySQL 8 container for obvious reasons
1. A Python Flask container to implement a REST API
1. A Local AppSmith Server

## How to setup and start the containers
**Important** - you need Docker Desktop installed

1. Clone this repository.  
1. Create a file named `db_root_password.txt` in the `secrets/` folder and put inside of it the root password for MySQL. 
1. Create a file named `db_password.txt` in the `secrets/` folder and put inside of it the password you want to use for the a non-root user named webapp. 
1. In a terminal or command prompt, navigate to the folder with the `docker-compose.yml` file.  
1. Build the images with `docker compose build`
1. Start the containers with `docker compose up`.  To run in detached mode, run `docker compose up -d`. 

# How to set up DataGrip and run Appsmith
1. Create new MySQL Data Source in DataGrip
1. Name it, set up with localhost 3200, user: root and password: <'your_root_password'>
1. Paste and run code from muchmasterpro.sql
1. Create new query console, paste and run code from generated_data.sql

# application url: http://localhost:8080/app/cs3200-final-appsmith/page1-6621a14666b0a65f3b038107?branch=master

# if difficulty opening app
1. import app in appsmith
2. copy ssh link from our appsmith repository
3. send the generated deploy key to Gili so she can give you access



