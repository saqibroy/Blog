Rails.application.routes.draw do
  resources :posts
  resources :projects
  get 'index' => 'welcome#index'
  root 'welcome#index'
end
