# README

Role Based Access Control:

Implement a role based auth system. System should be able to assign a role to user and remove a user from the role.

Entities are USER, ACTION TYPE, RESOURCE, ROLE

ACTION TYPE defines the access level(Ex: READ, WRITE, DELETE)

Access to resources for users are controlled strictly by the role.One user can have multiple roles. Given a user, action type and resource system should be able to tell whether user has access or not.

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
