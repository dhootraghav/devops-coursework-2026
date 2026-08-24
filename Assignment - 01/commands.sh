#!/bin/bash
# Assignment 1: Git Setup & Basic Workflow

# Step 1: Clone the repository
git clone https://github.com/YHQZ1/Devops-Coursework.git
cd Devops-Coursework

# Step 2: Create a file and add it to staging
echo "# DevOps Lab" > README.md
git status

# Step 3: Stage the file
git add README.md
git status

# Step 4: Commit the staged changes
git commit -m "Add initial README.md file"
git status

# Step 5: Push the commit to the remote repository
git push origin main
