Rails.application.routes.draw do


  
 
  get 'contacts/new'

  get '/login',         to: 'sessions#new'
  post '/login',        to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy', method: :delete

 
  get '/profile/:id',     to: 'users#change_profile', as: :profile
 	patch '/profile/:id',   to: 'users#change_profil'
  put '/profile/:id',     to: 'users#change_profil' 

  get '/facultyprofile/:id',   to: 'faculties#change_profile', as: :facultyprofile
  patch '/facultyprofile/:id', to: 'faculties#change_profil'
  put '/facultyprofile/:id',   to: 'faculties#change_profil' 


  resources :users
  resources :contacts, only: [:new, :create]
  resources :faculties
  resources :microposts

  get 'pages/home'

  get '/about',   to: 'pages#about'

  get '/contact', to: 'contacts#new'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
