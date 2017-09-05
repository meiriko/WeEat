Rails.application.routes.draw do
  root 'we_eat#index', as: 'we_eat_index'

  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
