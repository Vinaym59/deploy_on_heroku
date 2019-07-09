Rails.application.routes.draw do
  resources :surveys
  # root to: 'quotation#index'
  resources :countries
  # resources :states
  resources :tickets
  resources :books
  resources :quotations do
    resources :request_for_quotations
  end
  # get 'request_for_quotations/index'
   # get 'quotations/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
