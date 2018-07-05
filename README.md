# README

## Objectives
* Make associations for multiple models
* ActiveRecord
* form_for / form_tag / form_helpers

### The Domain
You've been hired as a barista at a cafe and want to improve their point of sales system!
You see so many customers throughout the day, but want to know which customers are regulars, and track their purchases.

* A `customer` has_many `purchases`
* A `brew` has_many `purchases`
* A `purchase` belongs_to a `customer` and to a `brew`
* A `customer` has_many `brews` through `purchases`
* A `brew` has_many `customers` through `purchases`

### Already Completed
* `rails new brew-crew`
* `rails g model Brew blend_name:string origin:string notes:string strength:integer`
* added 'faker' gem to Gemfile
* `rails g model Customer name`
* `rails g model Purchase brew_id:integer customer_id:integer`
* Created seed data

### Setup
* Fork and clone the repo
* In terminal, run `bundle install`
* In terminal, run `rake db:migrate`

##### Deliverables
Create the associations between the models, then run `rake db:seed`, check that Brews have been made in the rails console

As the user, when I go to the brews index page, it should display all of the brews as links to their show page.

As the user, the brew show page should have the brews name, origin, notes, and strength

As the user, the customer show page should display their name and list all of the brews they've purchased

As the user, I should be able to create a new purchase (with a collection_select for Brew.all) and a field for a customer's name (how would I be able to take in a new Customer if I wasn't already found?)

#### Bonus
Create a validation so a Customer's name must be unique
Create a new page for creating a brew and give it a form for all the fields necessary for a brew
Create validations so the fields cannot be empty
Create validations so that the strength of a brew must be between `1` to `5`
