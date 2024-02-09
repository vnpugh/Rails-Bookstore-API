#one-to-many relationship between authors and books
#each author can have zero or more books

class Author < ApplicationRecord # Author is an ActiveRecord model and can interact with the application's database
    has_many :books, dependent: :destroy
  end
#all of the books associated with the author will be destroyed (deleted)
# when the author is deleted.

  