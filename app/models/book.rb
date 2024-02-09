class Book < ApplicationRecord
  belongs_to :author
  # many-to-one association between the Book model and the Author model. 
  # each book record in the database belongs to one author. 
end
