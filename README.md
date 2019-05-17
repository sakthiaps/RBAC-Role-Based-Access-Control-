# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

Frameworks: Ruby on Rails 
Language: Ruby 
Database: MySQL 5.5

Libraries

1. mysql2:
      This is used as an adapter to connect mysql database with our rails application

2. wice_grid:
     It is used to handle grid in UI

Migration:
  * Model level migration has been handled.
  * Script has been written to populate data

Database tables
1. users
2. resources
3. roles

Action Type:
  I have set action type(read, write and delete) as constant in ActionType model.

Roles Controller:
  Here, user authentication for particular rosources are handled.

View:
  * Create view for Role.
  * we able to assign and delete an roles to user.