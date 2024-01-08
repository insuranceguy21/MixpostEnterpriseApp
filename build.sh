#!/bin/bash

# Stop on the first sign of trouble
set -e

# Echo each command
set -x

# Build the Vue.js frontend
# cd path-to-your-vuejs-directory # Change this to the path of your Vue.js project
npm install
npm run build

# Move back to the root directory
cd ..

# Laravel setup
# Run any Laravel specific commands you need here
php artisan migrate
php artisan cache:clear
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Any additional commands can go here
