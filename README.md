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


First issue: 
unable to load AJAX: error: syntax error reference.
Solution: 
Ensure that the controller and views matches. E.g. Votes controller has AJAX respond_to logic --> views/votes --> html and js files 

rails-ujs error: 
SOLUTION: 
add jQuery gem and include into application.js file 
