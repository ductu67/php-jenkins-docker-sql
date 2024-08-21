# ĐỒ ÁN TỐT NGHIỆP - GRADUATION THESIS  
### Website Demo with SQL Injection  
### Website with PHP Integrated with Jenkins and OWASP ZAP  

**Author**: TuND - KMA  
**Link Youtube**: [Project Demo Video](https://www.youtube.com/watch?v=xTs-rkdP62c&t=26s)

## 1. Project Overview

This project is part of my graduation thesis, demonstrating the development of a PHP website vulnerable to SQL Injection attacks, integrated with Jenkins for Continuous Integration (CI) and OWASP ZAP for automated security testing.

The project aims to highlight common web application vulnerabilities, focusing on SQL Injection. Additionally, it introduces a security testing pipeline using Jenkins and OWASP ZAP to automate the detection and reporting of such vulnerabilities.

### Key Features:
- PHP-based web application that intentionally contains SQL Injection vulnerabilities for testing purposes.
- Integration with Jenkins for automating builds, tests, and security scans.
- OWASP ZAP is used for automated security testing and vulnerability scanning.
  
## 2. Tools and Technologies

- **PHP**: Backend programming language for the web application.
- **Jenkins**: Continuous Integration (CI) tool used to automate testing and deployment.
- **OWASP ZAP**: A tool for identifying security vulnerabilities in web applications through automated scanning.
- **Docker**: Containerization tool used to ensure a consistent environment for testing and deployment.
- **MySQL**: Database system used for demonstrating SQL Injection vulnerabilities.
  
## 3. Project Structure

The repository contains the following key files and directories:
```
├── www/ # PHP source code for the web application
│ ├── books1.php
│ ├── books2.php
│ ├── db_connect.php
│ ├── login1.php
│ ├── login2.php
│ ├── ...
│
├── Dockerfile # Dockerfile for containerizing the PHP application
├── docker-compose.yml # Docker Compose file for orchestrating the containers
├── Jenkinsfile # Jenkins pipeline configuration
├── sqli.sql # SQL script for setting up the database with vulnerable data
├── README.txt # Additional project information
```
## 4. Automatic Testing and Security Pipeline

### Continuous Integration (CI) with Jenkins
Jenkins is used to automate the build and testing process. The pipeline includes:

1. **Build Stage**: Jenkins pulls the source code and spins up a Docker container with the PHP application.
2. **Test Stage**: Basic functional tests are run to verify the application’s functionality.
3. **Security Scan Stage**: OWASP ZAP is integrated into the Jenkins pipeline to automatically scan the PHP web application for vulnerabilities.

### Security Testing with OWASP ZAP

OWASP ZAP (Zed Attack Proxy) is a tool specifically designed for finding vulnerabilities in web applications. In this project, ZAP is used for:

- Scanning the website for SQL Injection vulnerabilities.
- Providing reports on discovered vulnerabilities.
- Automating security tests through integration with Jenkins, ensuring continuous vulnerability assessments during development.

## 5. Running the Project Locally

### Prerequisites:
- Docker installed on your system.
- Jenkins installed and configured.
- OWASP ZAP installed or available through Docker or [Official OWASP ZAP | Jenkins plugin](https://www.we45.com/post/how-to-integrate-zap-with-jenkins-a-step-by-step-guide)

### Prerequisites:
- **Build Stage**
    ```
        git clone <repository-url>
        cd project-directory 
    ```
- **Start the application using Docker Compose**
    ```
        docker-compose up --build
    ```
- **Start the application using Docker Compose**:
Open your browser and go to http://localhost to see the PHP website.
- **To run the Jenkins pipeline**: Ensure Jenkins is running and the Jenkinsfile is set up. Trigger the build to execute the automated security tests.
- **NOTE** - I am using webhook.

## 6. Conclusion
This project demonstrates the process of building a web application with intentional vulnerabilities for educational purposes. The integration of Jenkins and OWASP ZAP shows how modern DevSecOps practices can be used to automate the detection of security vulnerabilities early in the development process, ensuring a more secure web application.