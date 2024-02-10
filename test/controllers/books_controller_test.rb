require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
    @author = authors(:one)  
  end

  # Test for GET all books for a given author (Index)
  test "should get index of books for a given author" do
    # Set an instance variable @author
    get author_books_url(author_id: @author.id), as: :json

    assert_response :success
  end


  # Test for GET books by id (Show)
  test "should show book" do
    get author_book_url(author_id: @author.id, id: @book.id), as: :json

    assert_response :success

    json_response = JSON.parse(response.body)

    assert_equal @book.title, json_response['title']
    assert_equal @book.author.name, json_response['author_name']
  end


 # Test to create a new book with a specific author
 test 'POST /authors/:author_id/books creates a book with a HTTP 201 status code' do
  author = authors(:one)
  book_params = { book: { title: 'New Book Title' } } 

  assert_difference('Book.count', 1) do
  # include the nested route for creating a book for a specific author
  post author_books_url(author_id: author.id), params: book_params, as: :json
end

  assert_response :created
end


# Test for updating a book by id
 test 'PUT /authors/:author_id/books/:id updates a book and responds with the updated book title' do
   
  updated_title = 'Updated Book Title'
  book_params = { book: { title: updated_title } }
  
  # Need to send a PATCH request to update the book
  patch author_book_url(author_id: @author.id, id: @book.id), params: book_params, as: :json
  
  assert_response :success
  
  # Need to reload @book to get the updated attributes
  @book.reload

  assert_equal updated_title, @book.title
 end


# Test for deleting a book by id
test 'DELETE /authors/:author_id/books/:id deletes a book and returns a HTTP 204 status code' do
  author = authors(:one)  # Assuming you have an authors fixture
  # Ensure the book is associated with the author when it's created
  book = author.books.create!(title: 'Delete Book')

  assert_difference('Book.count', -1) do
    delete author_book_url(author_id: author.id, id: book.id)
  end

  assert_response :no_content
  assert_nil Book.find_by(id: book.id)
  end
end
