# CMP DevOps Application Test

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

A containerized web application that use Nginx and Python to create a development environment and infrastructure running on different Docker layers.
The target of this project is to provide a backend service [https://localhost/helloworld] that return an specific payload requested by the interviewer.
The infrastructure handles the redirection of http connections to https creating a self signed SSL certificate on the host machine to emulate the closest possible a production environment.

## Requirements
- Linux Ubuntu server with 20.0 LTS OS version
- Docker
- Docker Compose
- Root access

This application is intended to be purely practical with the purpose of testing the knowledge on some important 
domains for the DevOps junior position in the CMP Team.

For a more detailed and high level document please refer to:
https://nestorcolt.atlassian.net/wiki/spaces/TECHNICAL/pages/524289/CMP+Team+Technical+Test+TDD

Developed by [Nestor Colt] no further maintance [Augost 2021]

## Tech

The tech stack used in the development of the web app and its infrastructure

- Python 3.7 - Flask web framework for backend
- Nginx - Web server
- Html5 - Landing page
- Docker - Containerized layers for web server and web app
- Linux - Shell scripting for pre config and deployment
- mkcert - Creation of local ssl certificates for development

## Installation

Requires [ROOT] privileges to run.

Locate the root folder of the project un the user directory

```sh
mv /my_app_path/CMP_APPLICATION /home/$USER/
```

#### Deployment

For production release:

```sh
cd CMP_APPLICATION
bash deploy.sh
```

Verify the deployment by navigating to your server address in
your preferred browser.

`````sh
https://localhost

TERMINAL

curl https://localhost
curl https://localhost/helloworld
`````

## License

MIT

