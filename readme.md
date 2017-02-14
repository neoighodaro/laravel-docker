<p align="center"><img src="https://cloud.githubusercontent.com/assets/807318/22915144/7659b1ce-f275-11e6-8821-21c89ceb30b5.png" /></p>
<p align="center">Use this repository to get started with developing your Laravel application in a Docker container.</p>
<p align="center"><a href="https://neoighodaro.com">Creator</a> | <a href="https://scotch.io">Getting Started</a></p>

<p>&nbsp;</p>
<p>&nbsp;</p>

## Pre-requisites
* Docker running on the host machine.
* Docker compose running on the host machine.
* Basic knowledge of Docker.

<p>&nbsp;</p>

## Installation
To get started, the following steps needs to be taken:
* Clone the repo `git clone git@github.com:neoighodaro/laravel-docker.git appname`
* Change to the directory `cd appname`
* Copy `.env.example` to `.env` and customise the contents.
* Run `docker-compose up -d` to start the containers.
* Visit http://localhost:8888 to see your Laravel Docker instance.

<p>&nbsp;</p>

## Troubleshooting
* Port number might be already in use, change from `8888` to another number in your `docker-compose.yml` file.
* If you have any other issues, [report them](/issues).