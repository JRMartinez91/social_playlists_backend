Rails.application.routes.draw do
  resources :playlists do
    collection do
      get '/recent', to: 'playlists#recent'
      get '/tagsearch/:q', to:'playlists#tagsearch'
      get '/alltags', to: 'playlists#alltags'
    end
  end
  # create a custom route that gets the most recently created 10 playlists
  # and returns them in chronological order
  resources :tracks
  resources :users do
    collection do
      post '/login', to: 'users#login'
      get '/permit/:id', to:'users#permit'
      get '/session_id', to:'users#session_id'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
