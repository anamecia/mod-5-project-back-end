Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'

  get '/medicines', to: 'medicines#index'
  get '/usermedicines', to: 'users#medicines'
  get '/usernotes', to: 'users#notes'
  get '/useratcs', to: 'users#atcs'
  get '/lastatc', to: 'asthma_control_tests#last_atc_score'

  post '/createnewrx', to: 'rxes#create' 
  patch '/updaterx/:id', to: 'rxes#update'
  delete '/deleterx/:id', to: 'rxes#destroy'
  post '/createnewatcscore', to: 'asthma_control_tests#create'
  post '/createnewnote', to: 'notes#create'
  delete '/deletenote/:id', to: 'notes#destroy'
end
