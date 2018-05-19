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
