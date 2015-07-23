Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  root :to => 'members#index'
  resources :members
  resources :locations do
    resources :listings
  end

end
