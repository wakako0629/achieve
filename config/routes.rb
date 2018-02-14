Rails.application.routes.draw do

  resources :feeds
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
   
   if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
   end



end
