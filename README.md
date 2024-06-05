Welcome to the Merchandise Store Application!

This guide will help you set up and run the application using Docker, as well as continue development by extracting the project for local work. This project relies on Apache Tomcat as the local server for web applications.

Before You Start

Ensure you have:
- A stable internet connection.
- Docker Desktop installed.
- Basic knowledge of web application development and Tomcat server.

Note: If you are simply just a user and do not want to make changes or keep developing, you do not need to download Tomcat.

Step 1: Download Docker Desktop(If Not Already)

1. Visit the Docker Desktop download page: https://www.docker.com/products/docker-desktop/
2. Choose "Download for Windows" (or the appropriate version for your OS).
3. Run the downloaded installer to begin the installation process.

Step 2: Install Docker Desktop(If Not Already)

1. Follow the on-screen instructions to install Docker Desktop.
2. Create a Docker account if required.
3. Restart your computer if prompted.

Step 3: Start Docker Desktop

1. Launch Docker Desktop from the Start menu or desktop icon.
2. Wait for Docker to start (look for the Docker whale icon in the system tray).
3. Ensure Docker is running by checking the Docker status in the system tray. If it shows "Docker Desktop is running," you're set.

Step 4: Pull the Docker Image

1. Open a terminal or command prompt.
2. Pull the Docker image for the Merchandise Store app:marquezjulian09/merchnadise_store:tagname

Step 5: Run the Docker Container

1. In Docker Desktop, locate the pulled Docker image.
2. Click the "Run" button (triangle-shaped).
3. Set the host port to 8080 to ensure the app is accessible or a different number if currently in use but please make sure to use 8080.
4. Click "Run" to start the Docker container.

Step 6: Access the Application

1. Open a web browser.
2. Visit the following URL: http://localhost:8080/Merchandise_Store/index.jsp or a different host number s long s when you extract it from docker its using 8080

Developers: Extracting the Project for Local Work

If you want to work on the project, add files, or make changes, you can extract the project from the Docker container and continue development locally. The project relies on Apache Tomcat, so ensure it's installed and running on your machine.

Extracting the Project for Local Work

1. Create a directory to extract the project files into.
2. Save the Docker container's content as a .zip file:

Replace <container-id> with the ID or name of the Docker container.
Adjust /path/to/project.war to the correct path where the WAR file is located in the Docker container.

3. Navigate to the WAR file and rename it from Merchandise_Store.war to Merchandise_Store.zip.
4. Extract all files and configure any files you want within.

Using Tomcat for Local Development

If you're working locally and need to test the application, ensure you have Apache Tomcat installed. To install and run Tomcat:

1. Download the appropriate version of Apache Tomcat from the Apache Tomcat website: https://tomcat.apache.org/
2. Extract the downloaded archive and set up Tomcat.
3. Deploy the project to Tomcat by copying the WAR file into the webapps folder or using the Tomcat Manager.
4. Start Tomcat and open a web browser to test your changes.

Troubleshooting

If you encounter issues, consider these common problems:

- Docker Not Running: Ensure Docker Desktop is running and hasn't crashed.
- Port Conflicts: If port 8080 is in use, choose a different port when running the Docker container.
- Network Issues: Check your internet connection and Docker network settings.
- Tomcat Issues: Ensure Tomcat is installed and configured correctly.

Extracting and Editing the Project

To work on the project, you can extract the WAR file from the Docker container and convert it into a ZIP file. This allows you to view and modify the project files.

1. Use the `docker cp` command to copy files from the container to your local directory:

Replace <container-id> with the ID or name of the Docker container.
Adjust /path/to/project.war to the correct path where the WAR file is located in the Docker container.

2. In File Explorer:
- Navigate to the WAR file and rename it from Merchandise_Store.war to Merchandise_Store.zip.
- Then extract all files and configure any files you want within.



