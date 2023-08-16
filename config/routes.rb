Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

#   ## Routes for Restaurants
#   ## Get all restaurants
#   get "restaurants", to: "restaurants#index"
#   ## Get details of one restaurant
#   get "restaurants/:id", to: "restaurants#show", as: :restaurant
#   ## Create new Restaurant
#   get "restaurants/new", to: "restaurants#new", as: :new_restaurant
#   post "restaurants", to: "restaurants#create"

#   ## Routes for Reviews
#   ## Get all reviews
#   ## Create new review
#   get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
#   post "reviews", to: "reviews#create"
# end

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
