Rails.application.routes.draw do
  root 'contact_lists#index'
  resources :contact_lists
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
