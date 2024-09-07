#!/bin/bash

# Create a new directory for the project
echo "Enter your project name: "
read project_name
mkdir $project_name
cd $project_name

# Initialize npm and install dependencies
npm init -y

# Install Express
npm install express
npm install dotenv
npm install --save-dev nodemon

# create all the directories
mkdir database routes middlewares

# Create example index.js file in the project root
echo "const express = require("express")" > index.js
echo "const app = express();" >> index.js
echo "require('dotenv').config();" >> index.js
echo "app.use(express.json());" >> index.js
echo "const port = process.env.PORT || 3000;" >> index.js
echo "app.listen(port, () => console.log('Server running on port ' + port));" >> index.js

# Create .gitignore file and add node_modules to it
echo "node_modules" > .gitignore

# Create .env file with PORT=3000
echo "PORT=3000" > .env

echo "template generated..."