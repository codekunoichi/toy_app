# README

## Introduction
This application takes a simple micro blogging post idea and creates a web application using basic simple data models.

## Steps to create the scaffold for the rails application

- `rails _6.1.3.1_ new toy_app`
- Move the sqllite to the group for test, development.
- Add the gem pg
- `bundle install`
- `git init`
- `git add -A`
- `git commit -m "Initialize Repository"`
- Create the git repository in GitHub
- `git remote add origin https://github.com/codekunoichi/toy_app.git`
- `git push -u origin master`
- Edit the application controller to add rendering HTML for hello world
- Edit the config/routes.rb to add `root 'application#hello'`
- `git commit -am "Add hello"`
- `git push`
- `heroku create` Creates the Heroku Applicaiton
- `git push heroku master` Push to Heroku to deploy the app
- It fails  due to incompatibility `bundle loc --add-platform x86_64-linux` to add to the Gemfile.lock
- `git add .`
- `git commit -m "Add platform x86_64-linux to the Gemfile.Lock"`
- `git push && git push heroku`

## Users resource addition 
- `rails generate scaffold User name:string email:string`

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
