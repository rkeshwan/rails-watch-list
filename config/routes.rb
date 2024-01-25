Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'movies#index'

  # A user can see all the lists
  # get 'lists', to: 'lists#index', as: :list

  # # A user can see the details of a given list and its name
  # get 'lists/:id', to: 'lists#show'

  # # A user can create a new list
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'
  resources :lists do
    resources :bookmarks
  end
end
