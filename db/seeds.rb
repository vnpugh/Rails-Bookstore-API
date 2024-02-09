
# Clear existing data to prevent duplication issues
Author.destroy_all
Book.destroy_all

# Create Authors
authors = Author.create([
  { name: "J.K. Rowling" },
  { name: "Tony Morrison" },
  { name: "Stephen King" },
  { name: "Alice Walker" },
])

# Iterate over each author and create books
authors.each_with_index do |author, index|
  4.times do |i|
    author.books.create(title: "Book #{i + 1} by Author #{index + 1}")
  end
end

puts "Created #{Author.count} authors and #{Book.count} books."
