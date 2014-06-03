Rails.application.routes.draw do
  resources :things

  #root 'pages#helloworld'
  get '/helloworld', to: 'pages#helloworld'
end
