require "test_helper"

class AuthorsControllerTest < ActionDispatch::IntegrationTest

  # Test for GET /authors (Index)
  test 'GET /authors responds successfully with an HTTP 200 status code' do
    get '/authors'

    assert_response :success
    assert_equal 'application/json; charset=utf-8', @response.content_type
  end


  # Test for GET /authors/:id (Show)
  test 'GET /authors/:id returns an author by id with an HTTP 200 status code' do
    # Create a test author to fetch.
    author = Author.create!(name: 'Emily Dickens')

    # GET request with the author's id.
    get author_url(author.id)

    assert_response :success
    # Verify: author data in JSON format.
    assert_equal 'application/json; charset=utf-8', @response.content_type
    json_response = JSON.parse(@response.body)
    assert_equal author.name, json_response['name']
  end

  
  # Test for POST /authors (Create)
  test 'POST /authors creates an author with an HTTP 201 status code' do
    author_params = { author: { name: 'New Author'} }

    #need to make a POST request to the create action
    assert_difference('Author.count', 1) do
    post '/authors', params: author_params
  end

    assert_response :created
  end











end
