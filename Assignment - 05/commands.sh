#!/bin/bash
# Assignment 5: Jenkins Setup & Freestyle Project

# Step 1: Run Jenkins via Docker
docker run -d \
  -p 8080:8080 -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  --name myjenkins \
  jenkins/jenkins:lts-jdk17

docker ps

# Step 2: Get initial admin password
docker exec myjenkins cat /var/jenkins_home/secrets/initialAdminPassword

# Step 3-6: Unlock Jenkins, install suggested plugins, create admin user,
# confirm instance URL (done via browser UI at http://localhost:8080)

# Step 7: Verify Git plugin
# Manage Jenkins > Plugins > Installed > search "Git plugin"

# Step 8-9: Create Freestyle project "Git-Practice-Build"
# New Item > Freestyle project
# Source Code Management > Git > Repository URL:
#   https://github.com/YHQZ1/Devops-Coursework.git
# Branch specifier: */main

# Step 10: Build step - Execute shell
# (added via UI, script below is what was entered as the build step)

: '
echo " "
echo "BUILDING: ${JOB_NAME}, BUILD #${BUILD_NUMBER}"
echo "Workspace: ${WORKSPACE}"
echo " "
echo "Listing files checked out from Git:"
ls -la
echo " "
echo "Contents of README.md:"
cat README.md
echo " "
echo "Hello Jenkins!"
'

# Step 11: Save and run
# Click "Build Now", then check Console Output for build #1
