Rails.application.routes.draw do
  root 'sample_forms#index'
  resources :sample_forms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
