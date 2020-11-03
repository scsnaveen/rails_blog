Rails.application.routes.draw do
  get 'registration/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'registration#index'
  
end
