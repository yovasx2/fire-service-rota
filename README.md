# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* System dependencies

  * Ruby 2.7.3

  * Docker

* Run the project

  1. docker-compose up
  1. access localhost:3000

* Database creation

  1. docker-compose up
  1. docker-compose run web bundle exec rails db:create

* Database initialization

  1. docker-compose run web bundle exec rails db:migrate
  1. docker-compose run web bundle exec rails db:seed

* How to run the test suite

  1. docker-compose run web bundle exec rspec
