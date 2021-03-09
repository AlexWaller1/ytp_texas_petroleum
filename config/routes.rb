Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :geneticists do
    resources :clones
  end

  get '/login' to: 'sessions#new', as: 'login'
  post '/login' to: 'sessions#create'
  get '/signup' to: 'users#new', as: 'signup'
  post '/signup' to: 'users#create'
  get '*a', to: redirect('/')

end
