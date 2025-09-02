# Wordpress


## Table-of-Contents
* [Description](#description)  
* [Requirements](#requirements)
* [Quickstart](#quickstart)
* [Usage](#usage)

## Description

This repository is a docker compose example of how to set up a wordpress with a mariadb.

## Requirements

- Docker Compose

## Quickstart

1. **Clone repository**
    ```bash 
        git clone git@github.com:A1eksD/wordpress-docker.git
        cd wordpress-docker
    ```

1. **Create .env**
    Create a `db.env` and `wordpress.env` on the same level as the compose.yaml, where you set the environment variables:
    ```bash
        # db.env
        MYSQL_ROOT_PASSWORD=${EXAMPLE_ROOT_PW}
        MYSQL_DATABASE=${EXAMPLE_DB}
        MYSQL_USER=${EXAMPLE_USER}
        MYSQL_PASSWORD=${EXAMPLE_PW}
    ```
    ```bash
        # wordpress.env
        WORDPRESS_DB_HOST=${DB:3306}
        WORDPRESS_DB_USER=${EXAMPLE_DB_USER}
        WORDPRESS_DB_PASSWORD=${EXAMPLE_DB_PW}
        WORDPRESS_DB_NAME=${EXAMPLE_DB_NAME}
    ```
    
1. **Build and run** : use Docker Compose to build and start the container.
    ```bash
        docker-compose up --build
    ```

## Usage

Open `http://${YOUR_HOST}:8080` (you can change the port `8080` in `compose.yaml`) in your browser and follow the WordPress setup wizard to finish the installation.