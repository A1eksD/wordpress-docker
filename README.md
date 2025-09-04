# Wordpress

## Description

This repository is a docker compose example of how to set up a wordpress with a mariadb.


## Table-of-Contents
* [Prerequisites](#Prerequisites)
* [Quickstart](#quickstart)
* [Usage](#usage)

## Prerequisites

- Docker
- Docker Compose
- Docker Desktop (optional)

## Quickstart

1. **Clone repository**
```bash 
git clone git@github.com:A1eksD/wordpress-docker.git
cd wordpress-docker
```

1. **Create .env**
Create `.env` in the same directory as compose.yaml, and set the required environment variables inside them.
```bash
cp example.env .env
```

Fill the file with following variables: 
```bash
# db
MARIADB_ROOT_PASSWORD=${EXAMPLE_ROOT_PW}
MARIADB_DATABASE=${EXAMPLE_DB}
MARIADB_USER=${EXAMPLE_USER}
MARIADB_PASSWORD=${EXAMPLE_PW}

# wordpress
WORDPRESS_DATABASE_HOST=db
WORDPRESS_DATABASE_PORT_NUMBER=3306
WORDPRESS_DATABASE_NAME=${MARIADB_DATABASE}
WORDPRESS_DATABASE_USER=${MARIADB_USER}
WORDPRESS_DATABASE_PASSWORD=${MARIADB_PASSWORD}
```
> [!NOTE] 
> Make sure you have the right permissions to crate files. 
    
1. **Build and run** : use Docker Compose to build and start the container.
```bash
docker-compose -f compose.yaml up -d
```

## Usage

Open `http://${YOUR_HOST}:8080` (you can change the port `8080` in `compose.yaml`) in your browser and follow the WordPress setup wizard to finish the installation.

### Important Variables
These variables in your `.env` file must be set.

|Name           | Description       |
|---------------|-------------------|
|`MYSQL_ROOT_PASSWORD` | Root-Passwort for MariaDB  |
|`MYSQL_DATABASE` | Name of WP-Dabase  |
|`MYSQL_USER / MYSQL_PASSWORD` | DB-User + Passwort  |
|`WORDPRESS_DB_HOST` | Must be db:3306  |

Common important prompts.

| Aktion | Befehl |
|--------|--------|
| Container sauber stoppen (inkl. Netzwerk) | `docker compose down` |
| Neu starten (z. B. nach Änderungen in .env) | `docker compose up -d` |
| Container samt Images entfernen | `docker compose down --rmi all -v --remove-orphans` |
| Live-Logs ansehen | `docker compose logs -f` |
| WordPress-Dateien im Editor öffnen | `./wp_data/`-Ordner bearbeiten |
