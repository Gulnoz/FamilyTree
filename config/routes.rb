Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :member, only: [:index,:show, :create, :update]
resources :family, only: [:index, :show, :create, :update]
resources :message, only: [:index, :create, :update, :destroy]
resources :family_member, only: [:create, :update]

end
