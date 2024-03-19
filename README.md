
# Dockerization (Ubuntu)

Microblog Project Dockerization


## Installation

Requirements

```bash
Docker Desktop
Ubuntu/WSL - local terminal: wsl --install -d Ubuntu

Note:
Must enable ubuntu in Docker Desktop Settings
-> Settings -> Resources -> WSL Integration -> Check Ubuntu -> Apply and Restart

```
    
## Deployment

To deploy this project run
```bash
Ubuntu cmd:

- mkdir <project-name>
- cd <project-name>
- code .
```
```bash
Vscode terminal:

- git init
- git clone -b Docker https://github.com/XPERIA679/OJT1-Microblog
- cd OJT1-Microblog
- sudo apt install make
- make build 
```
```bash
Build Laravel Project:

- make laravel-project
- make permissions
- make copy-env
 -> uncomment node service in docker-compose.yml
- make down-up
- make migrate
```
DONE!
## Authors

- [@xReddskie](https://www.github.com/xReddskie)
- [@XPERIA679](https://www.github.com/XPERIA679)
