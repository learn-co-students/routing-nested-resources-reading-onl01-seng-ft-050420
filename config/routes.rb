Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # WET code 
  # get 'authors/:id/posts', to: 'authors#posts_index'
  # get 'authors/:id/posts/:post_id', to: 'authors#post' 
  # DRYer code 
  resources :authors, only: [:show] do 
    resources :posts, only: [:show, :index]
  end 

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

end
