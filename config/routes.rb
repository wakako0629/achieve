Rails.application.routes.draw do

  resources :blogs do
    collection do
      post :confirm
    end
  end
  
   resources :users, only: [:new, :create, :show]
   resources :sessions, only: [:new, :create, :destroy]
   resources :users
   resources :blogs, only: [:new, :edit, :show]
   resources :favorites, only: [:create, :destroy]
end
