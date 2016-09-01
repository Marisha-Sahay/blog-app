Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  post 'users', to: 'users#create'

  get '/login',to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/blog/new', to: 'blogs#new'
  post '/blogs', to: 'blogs#create'

end
