# ICS211 Web Applications - Lab 2 XSS App

## Purpose:

This project is used for lab 2. It contains an open-source project management system called *Collabtive*.

### Folders in this Project:

* `/db`  - db creation scripts.

* `/src` - the source files for the web application.

* `/web` - contains the Dockerfile for building the App Web Server.

### Files in this Project:

* `docker-compose.yml` - instructions for docker-compose to bring up the app. **Don't change anything in this file.**

* `README.md` - what you're reading right now!

## Directions:

To bring up the environment, do the following:

* At a bash prompt, in the same directory as the docker compose file, type:

  * `docker-compose up -d`

  This will build a web server image and create two containers - one for the web server and another for the database server. It will also link the project's `/src` folder with `/var/www/html` in the web container.

* Your application will be at http://<your VM's IP address>:8088

* If it isn't working, verify that the containers are running: `docker-compose ps`  

* If you want to look at logs (might help with debugging): `docker-compose logs`

* If you want an interactive shell with the web server: `docker exec -it php-apache bash`  

* If you want an interactive shell with the database server and a MySQL prompt: `docker exec -it mysql bash`
  
  * `mysql -u root -p`  password is `seedubuntu`

* When you're done:

  * Stop and remove the containers: `docker-compose down`
