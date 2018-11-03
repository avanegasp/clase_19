Rails.application.routes.draw do
  #
  get '/', to: "dogs#home"
  get '/dogs', to: "dogs#index", as: "dogs"
  get '/dogs/new', to: "dogs#new", as: "new_dog"
  get '/dogs/:id', to: "dogs#show", as: "dog"
  post '/dogs', to: "dogs#create"
  get '/dogs/:id/edit', to: "dogs#edit"
  patch '/dogs/:id', to: "dogs#update"

end
