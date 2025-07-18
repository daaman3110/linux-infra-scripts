#!/bin/bash

# Take username and comments
read -p "Enter Your Username: " USERNAME
read -p "Enter Your Full Name: " COMMENT

# Create the user
sudo useradd -c $COMMENT $USERNAME

# Generate Random Password
PASSWORD=$(openssl rand -base64 12)

# Set the password
echo "${USERNAME}:${PASSWORD}" | sudo chpasswd

# Force Password reset on first login
sudo chage -d 0 "$USERNAME"

# Show the details
echo "User $USERNAME created with password: $PASSWORD"
echo "User must change password at next login"

