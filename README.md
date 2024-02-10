
# Building a Ruby on Rails API for a Bookstore

## Description

I developed this project as part of the Codefi Codelabs curriculum. The primary goal was to demonstrate the development of a simple RESTful API using Ruby on Rails, tailored for the backend of a hypothetical online bookstore application.

## Key Features

<li>RESTful API Design: The project adheres to REST principles, making it scalable and easy to integrate with various frontend technologies.</li> <br>
<li> CRUD Operations: Users can perform Create, Read, Update, and Delete (CRUD) operations on two main resources:
    <ul>
      <li><strong>Books</strong>: Manage the bookstore's inventory, including titles, authors, and publication details.</li>
      <li><strong>Authors</strong>: Maintain author profiles, including their biographies and associated works.</li>
    </ul>
  </li>

## Testing the API

To ensure the reliability and functionality of the API endpoints, I utilized Minitest to create comprehensive tests for each endpoint in both the author and book controllers. This approach reinforced the backend's robustness and provided a safety net for future enhancements.
<br>
To interact with the API, I also utilized Postman, a popular tool for API testing. Postman allows you to easily construct requests, send them to your API, and view the responses.

## Learning Goals

<ul>
  <li>Understand the basic principles of RESTful API design.</li>
  <li>Learn to implement CRUD operations in a Rails API.</li>
  <li>Explore model associations in Rails.</li>
  <li>Practice writing RSpec tests for API endpoints.</li>
</ul>

## Learning Outcomes

<ul>
  <li>Gained proficiency in Ruby on Rails, focusing on API development.</li>
  <li>Understood RESTful design patterns and their implementation in web services.</li>
  <li>Mastered ActiveRecord for database management and handling associations between different models (Books and Authors).</li>
  <li>Developed skills in writing automated tests using Minitest, emphasizing the importance of testing in software development.</li>
</ul>

<p>This project provided hands-on experience in building a backend service from scratch, emphasizing clean code practices, API design principles, and the significance of testing in building reliable software.</p>

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

<ol>
  <li>Clone the repository.</li>
  <li>Next, install the dependencies.</li>
  <li>Install the required gems by running <code>bundle install</code>.</li>
  <li>
    Setup the database by running the following commands:
    <ul>
      <li><code>rails db:create</code></li>
      <li><code>rails db:migrate</code></li>
    </ul>
  </li>
  <li>
    Optionally, load the seed data file into the database:
    <ul>
      <li><code>rails db:seed</code></li>
    </ul>
  </li>
  <li>Start the Rails server with: <code>rails server</code> (or <code>rails s</code>). This command will start the Puma web server. By default, your API will be accessible at <a href="http://localhost:3000">http://localhost:3000</a>.</li>
</ol>







