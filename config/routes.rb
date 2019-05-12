Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/maps/search' => 'maps#search', as: 'search'
  post '/maps/search' => 'maps#search', as: 'searched'
  root 'maps#search'
end
