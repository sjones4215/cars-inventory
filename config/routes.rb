Rails.application.routes.draw do
 # resources :shoes
  #resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "cars", to:"cars#index"
end
