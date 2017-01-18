# Local craft database

A docker-compose setup for quickly setting up a local
copy of a Craft database. 

## What this project is not

This project does not provide means for pushing database changes back up 
to production. The reason for this is that it is easy to overwrite someone's work when pushing
to production while others are editing. 

## Getting started

Prerequisites: 

- [Docker compose](https://docs.docker.com/compose/)
- Mysql command line utilities. Installed with `brew install mysql` on Mac.

1. `git clone` project.
1. Make a copy of `.env-example` and name it `.env`. Complete the `.env` file with database credentials for the database that you want to copy from. 
1. Run `./download-prod.sh` to download a copy of the prod database and place it inside the `db-dump` folder
1. run `docker-compose up` in the project root to start a local mysql database connected to port 3306. It will automatically load the downloaded sql dump into a database called craft_cms. For more info see the `docker-compose.yml` file.

When docker is fully up and running you can connect to this database with a connections string like so:

`mysql://root:somegloriouspassword@127.0.0.1:3306/craft_cms`

## Troubleshooting

- **Stale data?** Use `docker-compose down` before running `docker-compose up` to ensure that the database is fully reset.
