Rails.application.routes.draw do
  root :to => 'members#index'
  resources :members
  resources :locations do
    resources :listings
  end

end
