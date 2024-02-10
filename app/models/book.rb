class Book < ApplicationRecord
  # many-to-one association between the Book model and the Author model. 
  # each book record in the database belongs to one author. 
  belongs_to :author

  # Method to return the author's name
  def author_name
    author.name  
  end
end
