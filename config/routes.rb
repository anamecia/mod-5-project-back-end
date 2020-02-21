Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'

  get '/medicines', to: 'medicines#index'
  get '/usermedicines', to: 'users#medicines'

  post '/createnewrx', to: 'rxes#create' 
  patch '/updaterx/:id', to: 'rxes#update'
  delete '/deleterx/:id', to: 'rxes#destroy'
end
