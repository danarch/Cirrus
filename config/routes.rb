Rails.application.routes.draw do
  # Default Devise login routes
  devise_for :users

  crud = %i(create show update delete)

  resources :posts, only: crud + [:index] do
    collection do
      get :mine
    end
  end

  root to: "posts#index"
end
