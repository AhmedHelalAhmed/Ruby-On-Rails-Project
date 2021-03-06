# README

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


# Resources

* devise gem for login system
```
https://github.com/plataformatec/devise#getting-started
```
* carrierwave gem for upload file
```
https://github.com/carrierwaveuploader/carrierwave
```


# Project terminal commends 

* make new project

```
rails new Ruby-On-Rails-Project
``` 

* add devise gem for authentication
```
bundle install
```
```
 rails generate devise:install
```
```
 rails generate devise User
```
```
 rails db:migrate
```
```
rails generate devise:views
#rails generate devise:views users #whynot?
```
* add some name, gender and date of birth to users
```
rails generate migration add_name_to_users name:string
```
```
rails generate migration add_gender_to_users gender:integer
```
```
rails generate migration add_date_of_birth_to_users date_of_birth:datetime
```
* add CarrierWave  to upload files
```
gem install carrierwave
```
* add avatar
```
rails g migration add_avatar_to_users avatar:string
rake db:migrate
```
* add courses
```
rails g scaffold Course title:string
```
* add relation between user and courses for migration
```
rails g migration add_user_id_to_courses
rake db:migrate
```
* add lectures migration
```
rails generate migration create_lectures attachment:string content:text user_id:integer course_id:integer

rails db:migrate

```
* add lectures model
```
rails generate model Lecture --skip-migration
```
* add lectures controller
```
rails generate scaffold_controller lecture
```
* add comment model
```
rails g model Comment body:text lecture_id:integer

```
* add comment controller
```
rails g controller Comments

```
* add active admin
```
bundle install
rails g active_admin:install
rails db:migrate
rake db:seed
```
