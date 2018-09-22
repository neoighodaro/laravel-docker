<p align="center"><img src="https://cloud.githubusercontent.com/assets/807318/22915144/7659b1ce-f275-11e6-8821-21c89ceb30b5.png" /></p>
<p align="center">Use this repository to get started with developing your Laravel application in a Docker container.</p>
<p align="center"><a href="https://neoighodaro.com">Creator</a> | <a href="https://scotch.io/tutorials/get-started-running-laravel-in-a-docker-container">Getting Started</a></p>

<p>&nbsp;</p>
<p>&nbsp;</p>

## Pre-requisites

- Docker running on the host machine.
- Docker compose running on the host machine.
- Basic knowledge of Docker.

<p>&nbsp;</p>

## Installation

To get started, the following steps needs to be taken:

- Clone the repo.
- `cd` to the project directory.
- `cd` to `web` and run the command to create a new Laravel project `laravel new src`.
- Copy the `.env.example` file in the root of the project to `.env` and customise.
- Run `docker-compose up -d` to start the containers.
- Visit **http://localhost:8888** to see your Laravel application.

<p>&nbsp;</p>

## Using Redis and/or MySQL

To use Redis or MySQL, uncomment the service definition in the `docker-compose.yml` file. Also remember to uncomment the `links` and `depends_on` list.

<p>&nbsp;</p>

## Troubleshooting

- Port number might be already in use, change from `8888` to another number in your `docker-compose.yml` file.
- If you have any other issues, [report them](https://github.com/neoighodaro/laravel-docker/issues).
