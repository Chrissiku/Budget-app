# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'group/index'
  get 'group/new'
  get 'group/create'
  get 'group/group_params'
  get 'entities/index'
  get 'entities/new'
  devise_for :users
  # root to: "user#index"
  
end
