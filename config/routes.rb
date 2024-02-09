Rails.application.routes.draw do
  resources :authors do
    resources :books
  end
  
end

# the resources method generates a standard set of RESTful routes for the author and book models
# the routes for books are set up as a nested resource within authors