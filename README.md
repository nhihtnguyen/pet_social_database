# How to setup and start database 

**Step 1**: Build image for project

    docker-compose build 

**Step 2**: Prepare database

    docker-compose up

To check this step, you can use DB viewer or Postico on Mac to check it, if your database already existed, so you don't need to run that step.

**Step 3**: Right now we can start project and enjoy coding. But you need to stop database service first.

    docker-compose stop // stop service
    docker-compose start // start service

**Step 4**: (Additional) To reimport database and working on it. We can overwritten backup file of database, then clean docker and re build.
(backup file here is: web_evelopment.sql)

# Update project with new change.

Everytime when we have a new feature or new service, we will pull down the newest version and start this command to update it

    docker-compose up --build

Remember only run it when we want to rebuild it, with normal action we just use without `--build` to save our time.
