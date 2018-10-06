Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'medical_checkups#index'
  namespace :exam do
    resources :items, only: [ :create ]
    resources :item_views, only: [ :new ]
  end
end
