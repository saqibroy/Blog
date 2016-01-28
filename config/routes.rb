Rails.application.routes.draw do
  resources :posts
  get 'index' => 'welcome#index'
  root 'welcome#index'
end
