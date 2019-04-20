Rails.application.routes.draw do
  # resources :campaigns
  resources :blogs do 
    resources :campaigns
  end
  root 'blogs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
