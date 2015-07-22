Rails.application.routes.draw do
  root :to => 'members#index'
  resources :members
  resources :locations
end
