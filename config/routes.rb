Rails.application.routes.draw do
  resources :blogs
 get 'blogs', to: 'blogs#index'
end
