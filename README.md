
# Building a Ruby on Rails API for a Bookstore

## Description

I developed this project as part of the Codefi Codelabs curriculum. The primary goal was to demonstrate the development of a simple RESTful API using Ruby on Rails, tailored for the backend of a hypothetical online bookstore application.

Key Features:

<li>RESTful API Design: The project adheres to REST principles, making it scalable and easy to integrate with various frontend technologies.</li>
* CRUD Operations: Users can perform Create, Read, Update, and Delete (CRUD) operations on two main resources:
Books: Manage the bookstore's inventory, including titles, authors, and publication details.
Authors: Maintain author profiles, including their biographies and associated works.

Testing:

To ensure the reliability and functionality of the API endpoints, I utilized Minitest to create comprehensive tests for each endpoint in both the author and book controllers. This approach reinforced the backend's robustness and provided a safety net for future enhancements.

Learning Goals:
Understand the basic principles of RESTful API design.
Learn to implement CRUD operations in a Rails API.
Explore model associations in Rails.
Practice writing RSpec tests for API endpoints.

Learning Outcomes:

Gained proficiency in Ruby on Rails, focusing on API development.
Understood RESTful design patterns and their implementation in web services.
Mastered ActiveRecord for database management and handling associations between different models (Books and Authors).
Developed skills in writing automated tests using Minitest, emphasizing the importance of testing in software development.
This project provided hands-on experience in building a backend service from scratch, emphasizing clean code practices, API design principles, and the significance of testing in building reliable software.

## Prerequisites
Ensure you have Ruby version 3.2.0 installed. You can check your Ruby version by running ruby -v in your terminal. Also, make sure you have Bundler installed. If not, install it using gem install bundler.

## Gems Used & Dependencies
* gem "rails", "~> 7.1.3": The web application framework used.

* gem "SQLite3", "~> 1.4": The database used for Active Record.

* gem "puma", ">= 5.0": The web server used for the application.
Puma web server [https://github.com/puma/puma]

* Minitest: The testing suite used for writing unit and functional tests for the application. Minitest provides a complete suite of testing facilities supporting TDD, BDD, mocking, and benchmarking.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Installation

1. Clone the repository.
2. Next, install the dependencies.
3. Install the required gems by running `bundle install`.
4. Setup the database by running the following commads:
<li>rails db:create</li>
<li>rails db:migrate</li>
5. Optionally, load the seed data file into the database:
<li>rails db:seed</li>
6. Start the Rails server with: rails server (rails s)
<h4>This command will start the Puma web server. By default, your API will be accessible at http://localhost:3000.</h4>






