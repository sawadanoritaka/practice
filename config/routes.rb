Rails.application.routes.draw do
  root 'top#index'
  resources :blogs
 get 'blogs', to: 'blogs#index'

end
