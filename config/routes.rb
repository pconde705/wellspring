Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy, :show]
    resources :user, only: [:create]
    resources :projects, only: [:index, :show, :create, :update, :destroy]
    resources :rewards, only: [:create]
  end
end
