Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy, :show]
    resources :users, only: [:create]
    resources :projects, only: [:index, :show, :create, :update, :destroy] do
      resources :rewards, only: [:create, :update]
    end
    post '/project_backers', to: 'project_backers#create_backer'
    post '/project_rewards', to: 'project_backers#create_reward'

    get '/all_projects', to: 'stats#total_project_count'
    get '/all_funded_projects', to: 'stats#total_funded_projects'
    get '/all_backers', to: 'stats#total_backing_users'
    resources :search, only: [:index]
  end
end
