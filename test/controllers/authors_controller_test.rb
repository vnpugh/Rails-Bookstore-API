require "test_helper"

class AuthorsControllerTest < ActionDispatch::IntegrationTest

  # Test for GET /authors (Index)
  test 'GET /authors responds successfully with a HTTP 200 status code' do
    get '/authors'

    assert_response :success
    assert_equal 'application/json; charset=utf-8', @response.content_type
  end


  # Test for GET /authors/:id (Show)
  test 'GET /authors/:id returns an author by id with a HTTP 200 status code' do
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
  test 'POST /authors creates an author with a HTTP 201 status code' do
    author_params = { author: { name: 'New Author'} }

    #need to make a POST request to the create action
    assert_difference('Author.count', 1) do
    post '/authors', params: author_params
  end

    assert_response :created
  end


  # Test for PATCH/PUT /authors/:id (Update)
  test 'PUT /authors/:id updates an author data and responds with the updated author' do

    author = Author.create!(name: 'Test Author') 
  
    updated_data = { name: 'Updated Name' }
  
    put author_url(author), params: { author: updated_data }
  
    assert_response :success
  
    author.reload
    assert_equal 'Updated Name', author.name

  end
  

  # Test for DELETE /authors/:id
  test 'DELETE /authors/:id deletes the author and returns a HTTP 204 status code' do
 
      author = Author.create!(name: 'Author Delete')
  
      assert_difference('Author.count', -1) do
        delete author_url(author)
      end
  
      assert_response :no_content
  
      #Check if the author is removed from the database.
      assert_nil Author.find_by(id: author.id)
    end
end
