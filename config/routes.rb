Rails.application.routes.draw do
  root 'top#index'
  resources :blogs
 get 'blogs', to: 'blogs#index'
  get "company/part1" => "company#part1"
  post "company/part1" => "company#part1"
  post "company/part2" => "company#part2"
  post "company/part3" => "company#part3"
end
