Go REST API with CI/CD
This is a simple RESTful API built with Go and the Gin framework. It includes a CI/CD pipeline using GitHub Actions to automate testing, building, and deploying a Docker image to Docker Hub.

Prerequisites
Go 1.21 or higher
Docker
GitHub account
Docker Hub account
Setup
Clone the repository:
bash

ggg
hhh

git clone <repository-url>
cd go-rest-api
Install dependencies:
bash


go mod tidy
Run the application locally:
bash


go run main.go
Access the API at http://localhost:8080/hello.
CI/CD Pipeline
The pipeline is configured in .github/workflows/ci.yml and performs the following:

Checks code formatting with gofmt.
Runs linter with golint.
Executes unit tests.
Builds the Go application.
Creates and pushes a Docker image to Docker Hub.
Docker
Build and run the Docker image locally:

bash


docker build -t go-rest-api .
docker run -p 8080:8080 go-rest-api
GitHub Actions Secrets
Add the following secrets in your GitHub repository under Settings > Secrets and variables > Actions:

DOCKER_USERNAME: Your Docker Hub username.
DOCKER_PASSWORD: Your Docker Hub access token or password.