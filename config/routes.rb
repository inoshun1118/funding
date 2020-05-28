Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    resources :backers, only: [:new, :create]
  end
end

