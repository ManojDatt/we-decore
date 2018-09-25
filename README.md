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

rails generate paperclip Food image

Process Images Version 

Gallery.find_each { |u| u.image.reprocess! }

or 

rake paperclip:refresh CLASS=Gallery