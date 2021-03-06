# CMP DevOps Application Test

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

A containerized web application that use Nginx and Python to create a development environment and infrastructure running on different Docker layers.
The target of this project is to provide a backend service https://localhost/helloworld that returns an specific payload requested by the interviewer.
The infrastructure handles the redirection of http connections to https creating a self signed SSL certificate on the host machine to emulate the closest possible a production environment.

This application is intended to be purely practical with the purpose of testing the knowledge on some important 
domains for the DevOps junior position in the CMP Team.

Developed by [Nestor Colt] no further maintance [Augost 2021]

## Technical Design Document
For a more detailed and high level document please refer to:
https://nestorcolt.atlassian.net/wiki/spaces/TECHNICAL/pages/524289/CMP+Team+Technical+Test+TDD


## Requirements
- Ubuntu Server (20.04 LTS & 18.04 LTS)
- Root access


## Tech

The tech stack used in the development of the web app and its infrastructure

- Python 3.7.2
- Docker 20.10.7
- Docker Compose 1.29.2
- Nginx 1.21.1
- Flask2.0.1
- Mkcert


## Installation

Requires [ROOT] privileges to run.

Locate the root folder of the project in the user directory

```sh
mv /my_project_path/CMP_APPLICATION /home/$USER/
```

#### Deployment

The deployment is intended to be the most automated possible, that's why is done running a shell script:

```sh
cd CMP_APPLICATION
bash deploy.sh
```

The previous command will install all the dependencies to make our containers work [docker, docker-compose] also will setup "mkcert" which is in charge of generating a ssl certificate for the host machine to make redirection to https possible. The rest of the magic happens inside of the docker containers.

#### Considerations
The product has been tested in Ubuntu versions 18.04 and 20.04 TLS always downloading the latest versions in the deployment process, however, there might be issues if the necessary software is already present in the HOST OS. It might not install new software if it finds another version already installed.

It is recommended to run this software on a fresh install to avoid any issue.

#### Check The Result
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

