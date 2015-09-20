Rails.application.routes.draw do
  devise_for :user, only: [:create]

  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
    resource :users
    resource :stories
  end
end
