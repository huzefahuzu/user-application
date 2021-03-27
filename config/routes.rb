Rails.application.routes.draw do
  devise_for :users

  resources :welcome
  resources :menu do
    resources :menu_items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "welcome#index"
end
