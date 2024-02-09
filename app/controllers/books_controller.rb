
class BooksController < ApplicationController
    #callback methods used by Rails controllers
    # the set_author method should be called before every action in this controller. 
    # the set_book method should run before only the show, update, and destroy actions.
    before_action :set_author
    before_action :set_book, only: [:show, :update, :destroy]
  
    # GET /authors/:author_id/books
    def index
      render json: @author.books
    end
  
    # GET /authors/:author_id/books/:id
    def show
      render json: @book
    end
  
    # POST /authors/:author_id/books
    def create
      @book = @author.books.build(book_params)
  
      if @book.save
        render json: @book, status: :created, location: [@author, @book]
      else
        render json: @book.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /authors/:author_id/books/:id
    def update
      if @book.update(book_params)
        render json: @book
      else
        render json: @book.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /authors/:author_id/books/:id
    def destroy
      @book.destroy
    end
  
    private
  
    def set_author
      @author = Author.find(params[:author_id])
    end
  
    def set_book
      @book = Book.find(params[:id])
    end
  
    def book_params
      params.require(:book).permit(:title)
    end
  end
  
