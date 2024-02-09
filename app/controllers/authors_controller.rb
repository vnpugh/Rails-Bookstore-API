
class AuthorsController < ApplicationController
    # the set_author method should run before only the show, update, and destroy actions.
    before_action :set_author, only: [:show, :update, :destroy]
  
    #CRUD (Index, Show, Create, Update, Destroy)
    # GET /authors (index - get all authors)
    def index
      @authors = Author.all
      render json: @authors
    end
  
    # GET /authors/:id (get authors by id)
    def show
      render json: @author
    end
  
    # POST /authors
    def create
      @author = Author.new(author_params)
      if @author.save
        render json: @author, status: :created, location: author_url(@author)
      else
        render json: @author.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /authors/:id
    def update
      if @author.update(author_params)
        render json: @author
      else
        render json: @author.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /authors/:id
    def destroy
      @author.destroy
      head :no_content
    end
  
    private
   #private methods used internally by the controller
    def set_author
      @author = Author.find(params[:id])
    end
  
    def author_params
      params.require(:author).permit(:name)
    end
  end
  
