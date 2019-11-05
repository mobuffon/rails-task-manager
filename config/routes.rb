Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: :new
  get 'tasks/:id', to: 'tasks#show', as: :task

  post 'tasks', to: 'tasks#create'

  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  delete 'tasks/:id', to: 'tasks#destroy'
end
=begin  # READ
  get "restaurants", to: "restaurants#index"
  get "restaurants/:id", to: "restaurants#show"

  # CREATE
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"

  # UPDATE
  get "restaurants/:id/edit", to: "restaurants#edit"
  patch "restaurants/:id", to: "restaurants#update"


  # DESTROY
  delete "restaurants/:id", to: "restaurants#destroy"
=end
