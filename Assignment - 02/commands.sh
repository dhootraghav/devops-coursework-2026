#!/bin/bash
# Assignment 2: Git Branching & Merging

# Step 1: Verify current state
git status

# Step 2: Create and switch to a new branch
git checkout -b feature-update
git branch

# Step 3: Modify README, add, and commit on the feature branch
# (edit README.md to add a new line)
git status
git add README.md
git commit -m "Update README on feature branch"
git status

# Step 4: Switch back to the main branch
git checkout main
cat README.md

# Step 5: Merge the feature branch into main
git merge feature-update
cat README.md

# Step 6: Push the updated main branch
git push origin main
