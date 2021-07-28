Rails.application.routes.draw do
  resources :artists
  resources :songs
  get '/artists/:artist_id/songs/:id', to: 'songs#show', as: 'artist_song'
  get '/artists/:artist_id/songs', to: 'songs#index', as: 'artist_songs'
end
