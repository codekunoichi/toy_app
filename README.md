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

## Microposts resource addition
- `rails generate scaffold Micropost content:text user_id:integer`

## Steps to deploy successfully to Heroku
- After adding models/controller scaffolding for users and microposts - push to Heroku
- `git push heroku`
- When you open the app you will see an error. This is because the database migration has not been finished yet.
- You can see the errors by looking through the logs
- `heroku logs`
- `heroku run rails db:migrate`
- After this app opens and functioning.

## Domain Model
- To generate the domain model add the gem `rails-erd`

```
group :development do
  gem 'rails-erd'
end
```

- Install graphviz

`brew install graphviz`

- Run `bundle install`

- Create a rake task

```
lib/tasks/erd.rake
desc 'Generate Entity Relationship Diagram'
task :generate_erd do
  system "erd --inheritance --filetype=dot --direct --attributes=foreign_keys,content"
  system "dot -Tpng erd.dot > erd.png"
  File.delete('erd.dot')
end
```

- Run `rake generate_erd` to regenerate (must have graphvis).
![](/erd.png)

## Undoing Things
Following outlines, how do you undo generated code. Since it will happen occaisionally. Rails provides ways to help you recover from such mistakes

### Controller Code Generation - Add/Delete

`rails generate controller StaticPages home help`
`rails destroy  controller StaticPages home help`

### Model Code Generation - Add/Delete

`rails generate model User name:string email:string`
`rails destroy model User`

### Migration Code Generation - Add/Delete

`rails db:migrate`
`rails db:rollback`
`rails db:migrate VERSION=0`