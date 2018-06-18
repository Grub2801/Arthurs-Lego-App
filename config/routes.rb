Rails.application.routes.draw do
  get 'welcome/index'

  resources :figures

  root 'welcome#index'
end
