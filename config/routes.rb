Rails.application.routes.draw do
  get 'users/new'

  	root 'static_pages#home'
  	get '/home', to: 'static_pages#home'
  	get '/inscription', to: 'users#new'


end
