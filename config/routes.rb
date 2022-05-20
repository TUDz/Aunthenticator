Rails.application.routes.draw do
  resources :tweets
  resources :photos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "main#hello"
  get "/hola", to: "main#hello"
  
  get "/saludo", to: "main#hi"
  post "hi", to:"main#greetings"


end
