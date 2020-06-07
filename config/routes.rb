Rails.application.routes.draw do
  devise_for :users

  get 'titles/index'

  root 'titles#index'

  resources :block_sessions, :titles
end
