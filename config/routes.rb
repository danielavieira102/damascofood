Rails.application.routes.draw do
  resources :greenfoods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'food#hello'
end
