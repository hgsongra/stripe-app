Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  devise_for :users
  resources :publications, only: [:index, :show]
  namespace :admin do
	  resources :publications
  end
end
